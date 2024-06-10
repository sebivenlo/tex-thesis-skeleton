package appointmentplanner.api;

import java.time.Duration;
import java.time.Instant;
import java.time.LocalTime;

/**
 * This is the interface that the user (the teachers) of your implementation use
 * to obtain instances of the classes implementing the given other interfaces.
 * *
 * @author Pieter van den Hombergh {@code p.vandenhombergh@fontys.nl}
 */
public interface AbstractAPFactory {

    /**
     * Factory method to create a day plan instance.
     *
     * @param day local day of this plan
     * @param startTime earliest time in plan
     * @param endTime no appointments end after this time
     * @return LocalDayPlan object.
     */
    default LocalDayPlan createLocalDayPlan(LocalDay day, LocalTime startTime,
            LocalTime endTime) {
        return createLocalDayPlan( day, day.ofLocalTime( startTime ),
                day.ofLocalTime( endTime ) );
    }

    /**
     * Factory method to create a day plan instance.
     *
     * @param day local day of this plan
     * @param start earliest time in plan
     * @param end no appointments end after this time
     * @return LocalDayPlan object.
     */
    LocalDayPlan createLocalDayPlan( LocalDay day, Instant start, Instant end );


    /**
     * Factory method to create an AppointmentData object without specified
     * startTime. The start time will be set (in an Appointment) as soon as the
     * appointment is added to the Day schedule.
     *
     * @param description of the appointment
     * @param duration of the appointment
     * @param priority of the appointment
     * @return AppointmentData object.
     * @throws NullPointerException if any of the parameters are null
     */
    AppointmentData createAppointmentData( String description,
            Duration duration,
            Priority priority );

    /**
     * Factory method to create an AppointmentData object without specified
     * startTime. The start time will be set (in an Appointment) as soon as the
     * appointment is added to the Day schedule. The priority is set as LOW by default.
     *
     * @param description of the appointment
     * @param duration of the appointment
     * @return Appointment object.
     * @throws NullPointerException if any of the parameters are null
     */
    default AppointmentData createAppointmentData( String description, Duration duration ) {
        return createAppointmentData( description, duration, Priority.LOW );
    }

    /**
     * Create an appointmentRequest with a required start time.
     *
     * @param data of the request
     * @param startTime time of the request
     * @return the request.
     */
    default AppointmentRequest createAppointmentRequest( AppointmentData data, LocalTime startTime ) {
        return createAppointmentRequest( data, startTime, TimePreference.UNSPECIFIED );
    }

    /**
     * Create a request with time preference.
     *
     * @param appData for this request
     * @param preference for time, early or late
     * @return the request
     */
    default AppointmentRequest createAppointmentRequest( AppointmentData appData, TimePreference preference ) {
        return createAppointmentRequest( appData, null, preference );
    }

    /**
     * Create a request with a preferred start time and a fallback time
     * preference.
     *
     * @param appointmentData data of the request
     * @param preferredStart preferred start time
     * @param fallBack when time not available, use fallback TimePreference
     * @return the request
     */
    AppointmentRequest createAppointmentRequest( AppointmentData appointmentData,
                                                 LocalTime preferredStart,
                                                 TimePreference fallBack );

    /**
     * Create a time slot between two times.
     *
     * @param start date+time
     * @param end date+time
     * @return the time slot
     */
    TimeSlot between( Instant start, Instant end );

    /**
     * Compute time slot on a date between given start- and endTime.
     *
     * If endTime is less than or equal to start time, it is assumed that the
     * end time is on the next day.
     *
     * @param day local day with time zone and date
     * @param startTime start time
     * @param endTime end time
     * @return the timeslot
     */
    default TimeSlot between( LocalDay day, LocalTime startTime, LocalTime endTime ) {
        boolean endBeforeOrAtStart = !endTime.isAfter(startTime);
        Instant start = day.ofLocalTime( startTime );
        Instant end = (endBeforeOrAtStart) ? day.plusDays( 1 ).ofLocalTime( endTime ) : day.ofLocalTime( endTime );
        return between( start, end );
    }
}
