%% @author Simon St.Laurent <simonstl@simonstl.com> [http://simonstl.com]
%% @doc Functions calculating velocities achieved by objects
%% dropped in a vacuum.
%% @reference from <a href= "http://shop.oreilly.com/product/0636920025818.do" >
%% Introducing Erlang</a>,
%% O'Reilly Media, Inc., 2017.
%% @copyright 2017 by Simon St.Laurent
%% @version 0.1

-module(drop).
-export([fall_velocity/2, mps_to_mph/1, mps_to_kph/1]).

%% @doc Calculates the velocity of an object falling on Earth
%% as if it were in a vacuum (no air resistance).  The distance is
%% the height from which the object falls, specified in meters,
%% and the function returns a velocity in meters per second.

fall_velocity(earth, Distance) when Distance >= 0  -> math:sqrt(2 * 9.8 * Distance);

fall_velocity(moon, Distance) when Distance >= 0 -> math:sqrt(2 * 1.6 * Distance);

fall_velocity(mars, Distance) when Distance >= 0 -> math:sqrt(2 * 3.71 * Distance).

fall_velocity(_, Distance) -> math:sqrt(2 * 9.8 * Distance).

mps_to_mph(Mps) -> 2.23693629 * Mps.

mps_to_kph(Mps) -> 3.6 * Mps.


