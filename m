Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6D5B2165
	for <lists@lfdr.de>; Fri, 13 Sep 2019 15:55:23 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B7260FE8;
	Fri, 13 Sep 2019 13:55:06 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5F065FDE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 13:55:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0043C7DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 13:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=bNVVCafqJkMcKoP1y59HFv8nRZ31wfx1kpQ64ijtqic=;
	b=iK98qwUe7lOp1d7EKY7SRunR0
	JlOgLWm5Fu6g9XFQG1KRkDv+Y0UkI6LgXnV+4TLv+uqQqp6SjUZHhy342WFPU8ErtM2c2hWxh3j2U
	lJkoc/JImKg7rfJvB54cPZVHIS2vg1E8CjdL09vS+vcN/EPqDA6k44scEudr4qd+vzgrMsH6GPHqW
	3+p4AYZdLaRyJ4ygVLqG/8QJ4f7VmWIqojyGf+5liR/oIEh4qx3+FOVFg0iAMnHsPuk7vCxcztdgV
	JbKDP0E9YgdjmUVjZ9hIkTbva1WtTMDiWSiwibb4ud+JDJhkstCYHyPLTWw25+wp37jEmVhG08IJ6
	PAZ5vnqfQ==;
Received: from 177.96.232.144.dynamic.adsl.gvt.net.br ([177.96.232.144]
	helo=coco.lan)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8m2I-0003uH-Lp; Fri, 13 Sep 2019 13:54:55 +0000
Date: Fri, 13 Sep 2019 10:54:46 -0300
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Matthew Wilcox <willy6545@gmail.com>
Message-ID: <20190913105446.2b7af558@coco.lan>
In-Reply-To: <CAFhKne8Nbk=OnZO_pqPURneVtxcHqbfkH+xJBrAYfCfsntfQ2g@mail.gmail.com>
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<yq1o8zqeqhb.fsf@oracle.com>
	<6fe45562-9493-25cf-afdb-6c0e702a49b4@acm.org>
	<44c08faf43fa77fb271f8dbb579079fb09007716.camel@perches.com>
	<74984dc0-d5e4-f272-34b9-9a78619d5a83@acm.org>
	<CAFhKne8Nbk=OnZO_pqPURneVtxcHqbfkH+xJBrAYfCfsntfQ2g@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Dave Jiang <dave.jiang@intel.com>, Bart Van Assche <bvanassche@acm.org>,
	ksummit-discuss@lists.linuxfoundation.org, linux-nvdimm@lists.01.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, Vishal Verma <vishal.l.verma@intel.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Steve French <stfrench@microsoft.com>, "Tobin C. Harding" <me@tobin.cc>
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

Em Fri, 13 Sep 2019 08:56:30 -0400
Matthew Wilcox <willy6545@gmail.com> escreveu:

> It's easy enough to move the kernel-doc warnings out from under W=1. I only
> out them there to avoid overwhelming us with new warnings. If they're
> mostly fixed now, let's make checking them the default.

Didn't try doing it kernelwide, but for media we do use W=1 by default,
on our CI instance.

There's a few warnings at EDAC, but they all seem easy enough to be
fixed.

So, from my side, I'm all to make W=1 default.

Regards,
Mauro

> 
> On Thu., Sep. 12, 2019, 16:01 Bart Van Assche, <bvanassche@acm.org> wrote:
> 
> > On 9/12/19 8:34 AM, Joe Perches wrote:  
> > > On Thu, 2019-09-12 at 14:31 +0100, Bart Van Assche wrote:  
> > >> On 9/11/19 5:40 PM, Martin K. Petersen wrote:  
> > >>> * The patch must compile without warnings (make C=1  
> > CF="-D__CHECK_ENDIAN__")  
> > >>>   and does not incur any zeroday test robot complaints.  
> > >>
> > >> How about adding W=1 to that make command?  
> > >
> > > That's rather too compiler version dependent and new
> > > warnings frequently get introduced by new compiler versions.  
> >
> > I've never observed this myself. If a new compiler warning is added to
> > gcc and if it produces warnings that are not useful for kernel code
> > usually Linus or someone else is quick to suppress that warning.
> >
> > Another argument in favor of W=1 is that the formatting of kernel-doc
> > headers is checked only if W=1 is passed to make.
> >
> > Bart.
> >
> > _______________________________________________
> > Ksummit-discuss mailing list
> > Ksummit-discuss@lists.linuxfoundation.org
> > https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> >  



Thanks,
Mauro
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
