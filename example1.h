namespace gitux {
	class example1 {
	public:
		example1();
		virtual ~example1();

		int getCounter();
		void resetCounter();
		void incCounter();
		void decCounter();
	private:
		int counter;
	};
}
