Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0992B21CE4B
	for <lists@lfdr.de>; Mon, 13 Jul 2020 06:25:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6215087676;
	Mon, 13 Jul 2020 04:25:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b0xkV-eqK3zl; Mon, 13 Jul 2020 04:25:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CABFD87652;
	Mon, 13 Jul 2020 04:25:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8EC67C0733;
	Mon, 13 Jul 2020 04:25:55 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2743BC0733;
 Mon, 13 Jul 2020 04:25:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 237E387646;
 Mon, 13 Jul 2020 04:25:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d8hUxfW3XUfu; Mon, 13 Jul 2020 04:25:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7919F875F6;
 Mon, 13 Jul 2020 04:25:52 +0000 (UTC)
Received: from localhost (unknown [122.182.251.219])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48BD82075D;
 Mon, 13 Jul 2020 04:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594614352;
 bh=80qKnVUw82dcBYxyVYPFAKYX0oe8Y7tqPYnBcK3ywPc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Na2Iv2pvncocTY8oen/XRYoAVghr9zHx8bJNnr+IkSKuFe0XLpnX9MjMuJrmDIzKa
 ltA8ugIAgnltMG6qjCEvrZmnSeUJlZQbYwhl2fWDEg3TzkblpemhLUZJFvVMdvtM5D
 b2RxZtTRe7bMJYJ1g9/vmGW0nB/OeF7Xg00ICPHw=
Date: Mon, 13 Jul 2020 09:55:47 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Message-ID: <20200713042547.GO34333@vkoul-mobl>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CAFhKne_ZVWVhZX5hNEbeGBfU6BMRN9JKQeTsVYOcMmEH1cd3xg@mail.gmail.com>
 <87h7ul15le.fsf@notabene.neil.brown.name>
 <20200706072221.GA1947246@kroah.com>
 <CAMuHMdWj2d5GF1ZkuhzQxg9teA51zjF0oQQPWcphzK=kJ6-x9Q@mail.gmail.com>
 <CAFhKne9vswg3Q4mTOz4WP6QWJ8tDH+SNx1Pu7LotLagoNURKgw@mail.gmail.com>
 <d6f56f5f5e0790ee9c7579eb05c7d92e071ee15a.camel@perches.com>
 <CAFhKne_p_rKN4adhsuyUyBfrS0YwCtoNFNn-x4aFajPmnkR6iQ@mail.gmail.com>
 <10eeae911ab653036554f5599ba34406572acaa9.camel@perches.com>
 <20200709131133.1bbb9c63@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200709131133.1bbb9c63@coco.lan>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>
Subject: Re: [Ksummit-discuss] [PATCH] CodingStyle: Inclusive Terminology
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

Hi Mauro,

On 09-07-20, 13:11, Mauro Carvalho Chehab wrote:
> Em Mon, 06 Jul 2020 06:30:01 -0700
> Joe Perches <joe@perches.com> escreveu:
> > 
> > $ git grep -i -w -P '\w*slave\w*' drivers | \
> >   cut -f1,2 -d/ | uniq -c | sort -rn | head -20 | cat -n
> >      1	   5683 drivers/net
> >      2	   2118 drivers/gpu
> >      3	   1807 drivers/dma
> >      4	   1389 drivers/i2c
> >      5	    866 drivers/interconnect
> >      6	    835 drivers/soundwire
> >      7	    821 drivers/spi
> >      8	    698 drivers/w1
> >      9	    508 drivers/media
> >     10	    481 drivers/infiniband
> >     11	    440 drivers/ata
> >     12	    317 drivers/scsi
> >     13	    267 drivers/fsi
> >     14	    240 drivers/tty
> >     15	    225 drivers/vme
> >     16	    223 drivers/staging
> >     17	    157 drivers/mmc
> >     18	    155 drivers/usb
> >     19	    141 drivers/video
> >     20	    140 drivers/char
> 
> It sounds that, as soon after this patch gets merged, the mailing lists
> will be flooded by lots of patches replacing such terms with something
> else :-(
> 
> Doing a quick look at the media subsystem, it sounds that most terms
> come from I2C master/slave and DiSEqC terminology, as defined by their
> specs (and the others seem to be derived from some hardware vendor 
> specific terminology).
> 
> As they're all supported by the current specs, if one would want
> to replace them, it should first ensure that the supporting specs
> should be using a different terminology, as otherwise replacing
> them would just make harder for anyone trying to understand the
> code.

I think waiting for specs may result in long delays, we all know how
'fast' spec bodies work!

Putting my soundwire maintainer hat, I see more than 1K uses of 'slave'
in the subsystem due to MIPI defined terms of SoundWire Master/Slave, so
I am planning to replace that and not wait for MIPI to update the spec.

A similar approach where we discuss with relevant stakeholder and arrive
at replacement terms and swap them would be great

Thanks
-- 
~Vinod
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
