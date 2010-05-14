package net.thepete
{
    import flash.utils.getTimer;

    public final class TickTock {
        internal static var _startTime : uint;
        internal static var _stopTime : uint;

        public static function start() : void {
            _startTime = getTimer();
        }

        public static function stop() : uint {
            return ( _stopTime = getTimer() ) - _startTime;
        }

        public static function get elapsedTimeInMiliseconds() : uint {
            return _stopTime - _startTime;
        }

        public static function measure(operation : Function) : uint {
            start();
            operation();
            stop();
            return elapsedTimeInMiliseconds;
        }

    }
}
