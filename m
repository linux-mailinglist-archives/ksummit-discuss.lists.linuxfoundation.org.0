Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CB854CF55
	for <lists@lfdr.de>; Wed, 15 Jun 2022 19:04:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39A7C81B10;
	Wed, 15 Jun 2022 17:04:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C5pbK8HO45Fy; Wed, 15 Jun 2022 17:04:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 6E5CB81D5A;
	Wed, 15 Jun 2022 17:04:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F18D9C002D;
	Wed, 15 Jun 2022 17:04:17 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ADD31C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 17:04:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9C28840B19
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 17:04:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=suse.cz header.b="UVmbjwlR";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=suse.cz header.b="HeQKIsfb"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h0bZiriOVE-A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 17:04:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E093240B0A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 17:04:11 +0000 (UTC)
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id 890DA1F88E;
 Wed, 15 Jun 2022 17:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1655312648; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/rydne4XGWMs38hTv7Syfcd5/FIcrbznTf2KWobjqu8=;
 b=UVmbjwlR2ml2xvQiw5jtmCrmR1qfzbMIrjHvaTGQyQdut5bvmIYlE5x73bSBhP7luMpemm
 U57rOXrXIF0IQIUiExrTJa2NLCwJNPnK61BXz8551C84tonmN82P2y3b/HrEC5SdW46cSH
 sE94dEtpcmmxxEFgeYquzRCX7e9TpU4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1655312648;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/rydne4XGWMs38hTv7Syfcd5/FIcrbznTf2KWobjqu8=;
 b=HeQKIsfbYFhJz4LPRHyUfoK8kPddPe1M2W7qva6ELFxVlTYZCZ6yPLyHzE97vMRPfBVtZH
 iIrwplJiY+skp1Dw==
Received: from quack3.suse.cz (unknown [10.163.28.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id 27BA52C141;
 Wed, 15 Jun 2022 17:04:08 +0000 (UTC)
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 95F59A062E; Wed, 15 Jun 2022 19:04:07 +0200 (CEST)
Date: Wed, 15 Jun 2022 19:04:07 +0200
From: Jan Kara <jack@suse.cz>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20220615170407.ycbkgw5rofidkh7x@quack3.lan>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
Cc: ksummit-discuss@lists.linuxfoundation.org, Christoph Hellwig <hch@lst.de>,
 Luca Weiss <luca@z3ntu.xyz>,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
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
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Wed 15-06-22 10:36:41, Jiri Kosina wrote:
> On Wed, 15 Jun 2022, Linus Walleij wrote:
> 
> > > As everyone is pretty much aware, eBPF adoption is quickly expanding for
> > > various usecases in the kernel. For example, there has recently been
> > > effort invested into adding eBPF support to HID subsystem [1], in order to
> > > make adding quirks for specific devices easier, not requiring a "full"
> > > proper driver for devices that just need a tiny bit of special handling
> > > here and there but apart from that can be handled by the generic driver
> > > just fine.
> > 
> > I see your concern as subsystem maintainer not wanting HID to turn into 
> > a dumping ground for various vendor extensions. 
> 
> Just to clarify the point I was trying to make here -- I am not saying 
> that I do not like this particular case (i.e. the HID-BFP patchset that 
> Benjamin is developing).
> 
> My point was that unless we properly define what are the reasonable 
> usecases for eBPF and what is the borderline beyond which we shouldn't go 
> if we want to maintain sanity of the ecosystem (and people having to 
> support the kernels :) ), we will be getting this discussion popping up 
> over and over again.

Yeah. Related to this is the fact that this way eBPF hooks become de-facto
API of the kernel with all the implications for required stability. It is
one thing to use eBPF for kernel introspection / monitoring (there
occasional breakage is kind of expected by userspace) and another to enable
hardware with it where people just expect things to work...

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
