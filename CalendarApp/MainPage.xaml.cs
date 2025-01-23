using System.Collections.ObjectModel;
using Syncfusion.Maui.Scheduler;

namespace CalendarApp;

public partial class MainPage : ContentPage
{
    private ObservableCollection<SchedulerAppointment> Appointments { get; set; }
	public MainPage()
	{
		InitializeComponent();
        Appointments = [];
        SfScheduler scheduler = new()
        {
            View = SchedulerView.Week,
        };

		var appointment = new ObservableCollection<SchedulerAppointment>
        {
            new()
            {
                StartTime = DateTime.Today.AddHours(9),
                EndTime = DateTime.Today.AddHours(11),
                Subject = "Client Meeting",
                Location = "Hutchison road",
            }
        };

		scheduler.AppointmentsSource = appointment;

        Content = scheduler;
	}
}

