
/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

class Main : LayerWidget, EventReceiver
{
	public void initialize() 
	{
		base.initialize();
		set_size_request_override(px("50mm"),px("70mm"));
		add(CanvasWidget.for_colors(Color.instance("#FF0000"), Color.instance("#EBB9BD")));
		//add(LabelWidget.for_string("UST").set_font(Theme.font().modify("6mm italic color=#CC3366 outline-color=white")));
		add(ButtonWidget.for_string("Click here.").set_event("clicked."));
		
	}

	public void on_event(Object o)
	{
		if("clicked.".equals(o)) 
		{
			add(LabelWidget.for_string("UST").set_font(Theme.font().modify("6mm italic color=#CC3366 outline-color=white")));
		}
	}
}
