`ifndef CPU_INTERFACE_SVH
`define CPU_INTERFACE_SVH

/*----------------------------------- Cache ---------------------------------*/
// ICache
interface CPU_ICache_Interface();
	logic 	     req;
	logic 		 addr_ok;
	logic 		 iscache;
	logic [ 3:0] offset;
	logic [ 7:0] index;
	logic [19:0] tag;
	logic 		 data_ok;
	uint64_t	 rdata;
	// Cache Instruction
	CacheType    cache_type;
	logic        cache_valid;
	logic [19:0] cache_tag;
	logic [ 7:0] cache_index;
	// exception
	logic        tlb_ex;

	modport	ICache(
		input  req,
		input  iscache,
		input  offset,
		input  index,
		input  tag,
		input  cache_type,
		input  cache_valid,
		input  cache_tag,
		input  cache_index,
		input  tlb_ex,
		output addr_ok,
		output data_ok,
		output rdata
	);

	modport CPU(
		output req,
		output iscache,
		output offset,
		output index,
		output tag,
		output cache_type,
		output cache_valid,
		output cache_tag,
		output cache_index,
		output tlb_ex,
		input  addr_ok,
		input  data_ok,
		input  rdata
	);
endinterface

// DCache
interface CPU_DCache_Interface();
	logic		 req;
	logic 		 iscache;
	logic	     wr;
	logic [ 3:0] offset;
	logic [ 7:0] index;
	logic [19:0] tag;
	logic [ 3:0] wstrb;
	logic [ 2:0] size;
	uint32_t	 wdata;
	uint32_t	 rdata;
	logic        tlb_ex;
	logic 		 addr_ok;
	logic 		 data_ok;
	// Cache Instruction
	CacheType    cache_type;
	logic        cache_valid;
	logic [19:0] cache_tag;
	logic 		 cache_way;
	logic        cache_dirty;
	logic [ 7:0] cache_index;

	modport	DCache(
		input  req,
		input  iscache,
		input  wr,
		input  offset,
		input  index,
		input  tag,
		input  wstrb,
		input  size,
		input  wdata,
		input  cache_type,
		input  cache_valid,
		input  cache_tag,
		input  cache_way,
		input  cache_dirty,
		input  cache_index,
		input  tlb_ex,
		output addr_ok,
		output data_ok,
		output rdata
	);

	modport CPU(
		output req,
		output iscache,
		output wr,
		output offset,
		output index,
		output tag,
		output wstrb,
		output size,
		output wdata,
		output cache_type,
		output cache_valid,
		output cache_tag,
		output cache_way,
		output cache_dirty,
		output cache_index,
		output tlb_ex,
		input  addr_ok,
		input  data_ok,
		input  rdata
	);
endinterface

`endif