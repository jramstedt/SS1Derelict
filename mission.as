//
// System Shock Enhanced Edition
//
// Copyright (C) 2015-2018 Night Dive Studios, LLC.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// DESCRIPTION:
//      System Shock Mission Script - Derelict
//

//
// LoadMission()
//
// Event:   User loads a new mission
// Subject: Current mission only
//

void LoadMission(void)
{
    kStr scriptDir;    
    Sys.GetCvarValue("script_dir", scriptDir);
	DatapathAdd("res", scriptDir);
	DatapathAdd("savegame", scriptDir + "/savegame");

    RestabSetBase("mission", "RES/archive.dat");
	
    RestabSetBase("gamescr", "mac_gamescr.res");
    RestabSetBase("objart", "objart.res");
    RestabSetBase("objart2", "objart2.res");
    RestabSetBase("objart3", "objart3.res");
    RestabSetBase("obj3d", "obj3d.res");
    RestabSetBase("citmat", "citmat.res");
    RestabSetBase("digifx", "digifx.res");
    RestabSetBase("texture", "RES/texture.res");
	// RestabAddPatch("texture", "texture.patch.res");
    RestabSetBase("vidmail", "vidmail.res");
    RestabSetBase("objprop", "objprop.dat");
    RestabSetBase("textprop", "textprop.dat");
    RestabSetBase("digiparm", "digiparm.bin");
    RestabSetBase("handart", "mac_handart.res");
	RestabAddPatch("handart", "mac_handart.patch.res");
}

//
// ChangeLanguage()
//
// Event:   User changes language or loads a new mission
// Subject: Current mission only
//

void ChangeLanguage(void)
{
    kStr lang;
    Sys.GetCvarValue("language", lang);

//  if (lang == "french")
//  {
//      RestabSetBase("svga_death", "svgadeth.res");
//      RestabSetBase("svga_intro", "svfrintr.res");
//      RestabSetBase("svga_end", "svgaend.res");
//      RestabSetBase("lowres_death", "lowdeath.res");
//      RestabSetBase("lowres_intro", "lofrintr.res");
//      RestabSetBase("lowres_end", "lowend.res");
//      RestabSetBase("strings", "frnstrng.res");
//      //RestabSetBase("strings", "frnstrng.cp1252.res");
//      RestabAddPatch("strings", "frnstrng.patch.res");
//      RestabSetBase("bark", "frnbark.res");
//      RestabSetBase("alog", "frnalog.res");    
//  }
//  else if (lang == "german")
//  {
//      RestabSetBase("svga_death", "svgadeth.res");
//      RestabSetBase("svga_intro", "svgeintr.res");
//      RestabSetBase("svga_end", "svgaend.res");
//      RestabSetBase("lowres_death", "lowdeath.res");
//      RestabSetBase("lowres_intro", "logeintr.res");
//      RestabSetBase("lowres_end", "lowend.res");
//      RestabSetBase("strings", "gerstrng.res");
//      //RestabSetBase("strings", "gerstrng.cp1252.res");
//      RestabAddPatch("strings", "gerstrng.patch.res");
//      RestabSetBase("bark", "gerbark.res");
//      RestabSetBase("alog", "geralog.res");
//  }
//  else // default to english
//  {
        RestabSetBase("svga_death", "svgadeth.res");
        RestabSetBase("svga_intro", "svgaintr.res");
        RestabSetBase("svga_end", "svgaend.res");
        RestabSetBase("lowres_death", "lowdeath.res");
        RestabSetBase("lowres_intro", "lowintr.res");
        RestabSetBase("lowres_end", "lowend.res");
        RestabSetBase("strings", "RES/cybstrng.res");
        // RestabAddPatch("strings", "cybstrng.patch.res");
		RestabSetBase("alog", "RES/citalog.res");
        RestabSetBase("bark", "RES/citbark.res");
//    }
}

//
// OfflineChangeLanguage()
//
// Event:   User changes language or loads a new mission
// Subject: Every mission detected in "missions" folder
//

void OfflineChangeLanguage(void)
{
    kStr lang;
    Sys.GetCvarValue("language", lang);

 //   if (lang == "french")
 //   {
 //   	SetTitle("Station Citadel");
 //       SetDescription("Quelque chose de terrible se passe à bord de la station Citadel.\nVous êtes peut-être le seul survivant.");
 //   }
 //   else if (lang == "german")
 //   {
 //   	SetTitle("Station Citadel");
 //       SetDescription("Auf der Station Citadel ist etwas furchtbar schiefgelaufen.\nDu bist vielleicht der letzte Überlebende.");
 //   }
 //   else // default to english
 //   {
    	SetTitle("Derelict");
        SetDescription("As a cyborg you will serve SHODAN well.");
 //   }
}

//
// Register()
//
// Event:   Game startup
// Subject: Every mission detected in "missions" folder
//

void Register(void)
{
}
