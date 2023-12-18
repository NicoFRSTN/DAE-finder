require 'csv'
require 'awesome_print'

CSV.foreach(Rails.root.join('lib', 'seeds', 'geodae1.csv'), headers: true, liberal_parsing: true, col_sep: ';',
                                                            row_sep: :auto, skip_blanks: true) do |row|
  ap row.to_hash
  t = Dae.new
  t.name = row['c_nom']
  t.owner = row['c_expt_rais']
  t.address = "#{row['c_adr_num']} #{row['c_adr_voie']} - #{row['c_com_nom']} #{row['c_com_cp']}"
  t.building = 'batiment'
  t.floor = row['c_acc_etg']
  t.situation = "#{row['c_acc']} --- #{row['c_acc_complt']}"
  t.open_days = row['c_disp_j']
  t.open_hours = row['c_disp_h']
  t.access = 'accès'
  t.working = row['c_etat_fonct']
  t.lattitude = row['c_lat_coor1'].to_f
  t.longitude = row['c_long_coor1'].to_f
  t.save
end
