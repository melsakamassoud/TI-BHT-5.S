configuration eq of tb_comparator is
	for testing
	end for;
end configuration;

configuration gt of tb_comparator is
	for testing
		for DUT : comparator_eq_param
			use entity work.comparator_gt_param(RTL);
		end for;
	end for;
end configuration;

configuration lt of tb_comparator is
	for testing
		for DUT : comparator_eq_param
			use entity work.comparator_gt_param(RTL)
			port map (
				a => b,
				b => a,
				y => y
			);
		end for;
	end for;
end configuration;