$(document).ready(() => {

	$(document).on('click', '.opponents', (e) => {
		let game_id = e.target.id;
		let refs_div_id = '#r'+game_id; 
		let class_list = $(refs_div_id).attr('class').split(/\s+/);
		let refs_remaining = $(refs_div_id).data('remaining');


		if ($.inArray('listed', class_list) == -1) {
			$(refs_div_id).addClass('listed');

			$.ajax({
				url: '/game/show-refs-for-game',
				data: {
					id : game_id,
					remaining: refs_remaining
				},
				type: 'get',
				success: (data) => {
					$(refs_div_id).empty().append(data.html_content);
				}
			});
		} else {
			$(refs_div_id).removeClass('listed');
			$(refs_div_id).empty();
		}
	});

	$(document).on('click', '.add-ref', (e) => {
		let game_id = e.target.id;
		let input_id = '#i'+game_id;
		let ref_mail = $(input_id).val();

		$.ajax({
			url: '/game/add-new-ref',
			data: {
				id : game_id,
				ref_mail: ref_mail
			},
			type: 'get',
			success: (data) => {
				if(data.success) {
					location.reload();
				}
			}
		});
	});

	$(document).on('click', '.remove-ref', (e) => {
		let game_id = e.target.id.match(/\d+/g)[0];
		let ref_id = e.target.id.match(/\d+/g)[1];

		$.ajax({
			url: '/game/remove-ref',
			data: {
				id : game_id,
				ref_id: ref_id
			},
			type: 'get',
			success: (data) => {
				if(data.success) {
					location.reload();
				}
			}
		});
	});

	// $(document).on('click', '.edit-ref', (e) => {
	// 	let game_id = e.target.id;
	// 	let input_id = '#i'+game_id;
	// 	let ref_mail = $(input_id).val();

	// 	$.ajax({
	// 		url: '/game/add-new-ref',
	// 		data: {
	// 			id : game_id,
	// 			ref_mail: ref_mail
	// 		},
	// 		type: 'get',
	// 		success: (data) => {
	// 			if(data.success) {
	// 				location.reload();
	// 			}
	// 		}
	// 	});
	// });

	$(document).on('click', '.delete-game', (e) => {
		let game_id = e.target.id.slice(3);

		$.ajax({
			url: '/game/delete-game',
			data: {
				id : game_id
			},
			type: 'get',
			success: (data) => {
				if(data.success) {
					location.reload();
				}
			}
		});
	});


});