Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 77142B25F7
	for <lists@lfdr.de>; Fri, 13 Sep 2019 21:18:00 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5C442E80;
	Fri, 13 Sep 2019 19:17:47 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9866CE2F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 19:17:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2EA8B896
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 19:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rlRJRtbWGqF5qJn2FgghKNYZdCECrxLGGuNAvdpBnhE=;
	b=soQppz2sjZ542l4x8+d2PrSGd
	JUy0I/+m3xaGNL+3TaQdmws2k+87EdwqozCJbNQoNkOdYssAzSQft6aYDAKIOS6S+ZIbjO0ujXi4U
	Z8tWDGTXggK7USMOULInO7NZgGXRQvg83VfEBJiD3nE28UFgdO0JDMb8qcdJwfHetcRB/NBAgJObA
	Ie+2H2YULowfnE+GM/bw+v48uAfTloz7RO4/9G94UX2N4vuUNNy9xZUD796Bo6JJbJ6iWYK5QILFF
	7WuNSj1MHoyTRMQ1c3suXpO0RgUhE+F2F6et9sk6WaTHgecOGqrygNc2HRphWdHBmlKmHZcau7Qu5
	slqT0cpBg==;
Received: from 177.96.232.144.dynamic.adsl.gvt.net.br ([177.96.232.144]
	helo=coco.lan)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8r4b-0000J3-2S; Fri, 13 Sep 2019 19:17:37 +0000
Date: Fri, 13 Sep 2019 16:17:31 -0300
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Joe Perches <joe@perches.com>
Message-ID: <20190913161731.6e3405a3@coco.lan>
In-Reply-To: <78f67ee934f167b433517da81c6a0d3f35c4b123.camel@perches.com>
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<yq1o8zqeqhb.fsf@oracle.com>
	<6fe45562-9493-25cf-afdb-6c0e702a49b4@acm.org>
	<44c08faf43fa77fb271f8dbb579079fb09007716.camel@perches.com>
	<74984dc0-d5e4-f272-34b9-9a78619d5a83@acm.org>
	<4299c79e33f22e237e42515ea436f187d8beb32e.camel@perches.com>
	<CAL_JsqJju36BZPK6DJab28Ne-ORpEyPpxH0H4DuymxFMabpMRQ@mail.gmail.com>
	<78f67ee934f167b433517da81c6a0d3f35c4b123.camel@perches.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Dave Jiang <dave.jiang@intel.com>, Bart Van Assche <bvanassche@acm.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	linux-nvdimm <linux-nvdimm@lists.01.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dmitry Vyukov <dvyukov@google.com>, Steve French <stfrench@microsoft.com>,
	"Tobin C. Harding" <me@tobin.cc>
Subject: Re: [Ksummit-discuss] [PATCH v2 0/3] Maintainer Entry Profiles
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

Em Fri, 13 Sep 2019 11:42:38 -0700
Joe Perches <joe@perches.com> escreveu:

> On Fri, 2019-09-13 at 15:26 +0100, Rob Herring wrote:
> > On Fri, Sep 13, 2019 at 3:12 PM Joe Perches <joe@perches.com> wrote:  
> > > On Thu, 2019-09-12 at 13:01 -0700, Bart Van Assche wrote:
> > >   
> > > > Another argument in favor of W=1 is that the formatting of kernel-doc
> > > > headers is checked only if W=1 is passed to make.  
> > > 
> > > Actually, but for the fact there are far too many
> > > to generally enable that warning right now,
> > > (an x86-64 defconfig has more than 1000)
> > > that sounds pretty reasonable to me.  
> 
> > It's in the 1000s on arm because W=1 turns on more checks in building
> > .dts files. There are lots of duplicates as most of the dts content is
> > as an include file (e.g. board dts includes soc dts).  
> 
> Yeah, dts[i] files in arm compilations are very noisy at W=1
> so moving those message types to W=2 seems sensible.
> 
> $ { opt="ARCH=arm CROSS_COMPILE=arm-unknown-linux-gnueabi-" ; make $opt clean ; make $opt defconfig ; make $opt W=1 -j4 ; } > arm_make.log 2>&1
> 
> $ grep -i -P 'dtsi?:.*warning' arm_make.log | wc -l
> 69164

Yeah, makes sense moving them to W=2, or to make them somehow produce
less noise.

> Just fyi:  for an x86-64 defconfig with gcc 8.3
> 
> $ { make clean ; make defconfig ; make -j4 W=1 ; } > make.log 2>&1
> 
> There are ~300 W=1 for non kernel-doc -W<foo> warnings.
> 
> $ grep -i -P -oh '\[\-W[\w\-]+\]' make.log |sort | uniq -c | sort -rn
>     163 [-Wmissing-prototypes]
>      69 [-Wunused-but-set-variable]
>      16 [-Wempty-body]
>      10 [-Wtype-limits]
>       6 [-Woverride-init]
>       2 [-Wstringop-truncation]
>       2 [-Wcast-function-type]
>       1 [-Wunused-but-set-parameter]

On my eyes, it doesn't sound too much. I suspect that, 
with gcc-9, it should produce more warnings, though.

Perhaps we could "promote" most of those to W=0.

> 
> And there are ~1000 kernel-doc only messages in various files

A significant amount of those warnings appear with "make htmldocs".

Not having the kernel-doc warning as part of W=0 helps to make
very hard to have them cleared.

IMHO, those should be enabled by default with W=0, at least for the
files that are included on some kernel-doc tag.

I mean, perhaps, when W=0, Kernel build could run:

	$ ./scripts/kernel-doc -none $(git grep kernel-doc:: Documentation/|cut -d: -f4-|sort|uniq|grep -vE "\bsource\b")

That produces 165 warnings (against v5.3-rc4 + media -next patches).

Thanks,
Mauro
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
