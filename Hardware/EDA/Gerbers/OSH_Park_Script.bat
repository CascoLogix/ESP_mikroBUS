REM Create new directory for OSH Park formatted gerber files
mkdir OSH_Park_Gerbers\

REM Copy all drill (.drl) files
COPY *.drl OSH_Park_Gerbers

REM Copy top copper layer
COPY *Front.gbr OSH_Park_Gerbers

REM Copy bottom copper layer
COPY *Back.gbr OSH_Park_Gerbers

REM Copy all inner layers
COPY *.Cu.gbr OSH_Park_Gerbers

REM Copy PCB edge layers (Note: new KiCAD versions create "*Edge_Cuts.gbr" file)
COPY *Edge.Cuts.gbr OSH_Park_Gerbers

REM Copy top & bottom mask layer
COPY *.Mask.gbr OSH_Park_Gerbers

REM Copy top & bottom silk layer
COPY *.SilkS.gbr OSH_Park_Gerbers

REM Rename all files in new directory to proper OSH Park recognized extensions
REN OSH_Park_Gerbers\*.drl *.xln
REN OSH_Park_Gerbers\*Power.Cu.gbr *Pwr_Cu.g2l
REN OSH_Park_Gerbers\*Ground.Cu.gbr *Gnd_Cu.g3l
REN OSH_Park_Gerbers\*Edge.Cuts.gbr *Edge_Cuts.gko
REN OSH_Park_Gerbers\*F.Cu.gbr *F_Cu.gbr
REN OSH_Park_Gerbers\*B.Cu.gbr *B_Cu.gbr
REN OSH_Park_Gerbers\*B.Mask.gbr *B_Mask.gbr
REN OSH_Park_Gerbers\*B.SilkS.gbr *B_SilkS.gbr
REN OSH_Park_Gerbers\*F.Mask.gbr *F_Mask.gbr
REN OSH_Park_Gerbers\*F.SilkS.gbr *F_SilkS.gbr
