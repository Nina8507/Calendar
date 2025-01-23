using System.ComponentModel;

namespace CalendarApp.Models;

public class Booking : INotifyPropertyChanged
{
    public required int _id;
    public required string _fullName;
    public required DateTime _from;
    public required DateTime _to;
    public string? _notes;
    public Brush? Background { get; set; }
    public Color? TextColor { get; set; }

    public event PropertyChangedEventHandler? PropertyChanged;

    public int Id
    {
        get => _id;
        set
        {
            if(_id != value)
            {
                _id = value;
                RaiseOnPropertyChanged(nameof(Id));
            }
        }
    }

    public DateTime From
    {
        get => _from;
        set
        {
            if(_from != value)
            {
                _from = value;
                RaiseOnPropertyChanged(nameof(From));
            }
        }
    }

    public DateTime To
    {
        get => _to;
        set
        {
            if(_to != value)
            {
                _to = value;
                RaiseOnPropertyChanged(nameof(To));
            }
        }
    }

    public string FullName 
    {
        get => _fullName;
        set
        {
            if(!string.IsNullOrEmpty(value))
            {
                if(_fullName != value)
                {
                    _fullName = value;
                    RaiseOnPropertyChanged(nameof(FullName));
                }
            }
        }
    }

    public string? Notes 
    {
        get => _notes;
        set
        {
            if(!string.IsNullOrEmpty(value))
            {
                if(_notes != value)
                {
                    _notes = value;
                    RaiseOnPropertyChanged(nameof(Notes));
                }
            }
        }
    }

    private void RaiseOnPropertyChanged(string propertyName)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}