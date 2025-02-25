# use this to get plots of the jacobian
# for the newton hydro solver, set save_jac_plot_data = .true.
# in enter_setmatrix in mod_hydro_newton.

# column k of the row labelled '+' holds ep1
# column k of the row labelled '0' holds e00
# column k of the row labelled '-' holds em1

# ep1(i,j,k) if partial of equ(i,k) wrt var(j,k+1)
# e00(i,j,k) if partial of equ(i,k) wrt var(j,k)
# em1(i,j,k) if partial of equ(i,k) wrt var(j,k-1)


# to narrow in on a particular region of the star, set first_col and last_col below.
# first_col = 0 starts at the surface; last_col = -1 ends at the center.
first_col = 0
last_col = -1

first_col = 600
last_col = 700


load "~/mesa/utils/image_plot.rb"
load "~/mesa/utils/image_log.rb"

log_data_dir = '../plot_data/jacobian_data'
names_filename = 'names.data'
xlabel = 'grid'
ylabel = 'm1 \quad \quad \quad \quad \quad \quad \quad \quad \quad 00 \quad \quad \quad \quad \quad \quad \quad \quad \quad p1'
image_Xs = nil
image_Ys = nil

first_row = 0
last_row = -1

Image_Log_plot.new(                
                log_data_dir,
                names_filename,
                xlabel, ylabel, 
                first_col, last_col, 
                first_row, last_row,
                image_Xs, image_Ys, true, '.data')
