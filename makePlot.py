#!/usr/bin/env python

import ROOT

infile = ROOT.TFile("output.root", "read")

print("The file contains:")
keys = infile.GetListOfKeys()
for key in keys:
    print(key.GetName())

graph0 = infile.Get("graph_0")
c1 = ROOT.TCanvas("c1","c1",1600,1000)
graph0.Draw()
c1.SaveAs("graph0.png")


hist0 = infile.Get("hist_0")
c2 = ROOT.TCanvas("c2","c2",1600,1000)
hist0.Draw("SURF2")
c2.SaveAs("hist0.png")

hist1 = infile.Get("hist2_0")
c2 = ROOT.TCanvas("c2","c2",1600,1000)
hist1.Draw("SURF2")
c2.SaveAs("hist1.png")