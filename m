Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C545554DC69
	for <lists@lfdr.de>; Thu, 16 Jun 2022 10:02:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D00A40275;
	Thu, 16 Jun 2022 08:02:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M1LCOXoHgnsC; Thu, 16 Jun 2022 08:02:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 59B8B404F5;
	Thu, 16 Jun 2022 08:02:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1CD70C002D;
	Thu, 16 Jun 2022 08:02:41 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 82B8CC002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 08:02:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 61DDA6112A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 08:02:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BLt3qpaBvZUe
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 08:02:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7ACD561116
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 08:02:36 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id AFE0AB8216B;
 Thu, 16 Jun 2022 08:02:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C558C34114;
 Thu, 16 Jun 2022 08:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1655366551;
 bh=l74osRM0v/IfVt0ettiOg3vPTMVRkB/OhD0yQi1450Y=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=FI/wa2z1FdQiCpeYFWzoayHPKgW5GZMd4GkNzVigIIW+sw8Je77Kbb2m7h1sT2ftk
 7d8Ed+Oscy3PXg4b21yMdO4g9+33o+bv51paZgo6sgNdUeLQosS28k+b7+uzUgIrWy
 kWxcmcTDu/0OpR8r2lIF9yMvMh3e3h1ES6fZTUmXO744/9xF1mNtfivLUc0UU0WdH8
 lCnMQg63b+h9DPmt4Jz2FM6u04q1tF79cfFStyLMlYwZ6OZzdk2eNDIYeOOBlwVlon
 hmsVCLh1BUPZPfaocIEA/RgseLzbbPn3zCALguiNrlvWbzzuYFikI10UU+3+AlUqMH
 E7XDGabN7XBug==
Date: Thu, 16 Jun 2022 10:02:27 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Benjamin Tissoires <benjamin.tissoires@redhat.com>
In-Reply-To: <CAO-hwJJmW_STS=nT22n4pcaZf9gz953K4o2vhgmq-ig4OzxOLg@mail.gmail.com>
Message-ID: <nycvar.YFH.7.76.2206160959080.14340@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <CAO-hwJJmW_STS=nT22n4pcaZf9gz953K4o2vhgmq-ig4OzxOLg@mail.gmail.com>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org, Luca Weiss <luca@z3ntu.xyz>,
 Christoph Hellwig <hch@lst.de>, Bartosz Golaszewski <brgl@bgdev.pl>
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

On Wed, 15 Jun 2022, Benjamin Tissoires wrote:

> One point that was also raised in the various HID-BPF patch series is 
> that for "hardware enablement" like support, the eBPF programs would be 
> in-tree, and automatically loaded by the kernel itself.
> 
> Alexei has some ideas on how to implement that, I had others, but the 
> hallway track discussions showed that everybody has a different idea on 
> the automatic mechanism, but it is a requirement and worth discussing :)
> 
> Which means that in that case, eBPF would be a more convenient way for 
> users to fix their device, without having to rely on a full or partial 
> kernel recompilation.

That definitely does solve one of the issues. It's basically following the 
model of perf, where the ABI must not be kept intact, because the user(s) 
of it are in-tree and released in lockstep with the ABI changes.

> While working on eBPF, I came to realize how hidraw is bad in terms of 
> development model for userspace "drivers". 

As the original author of hidraw, I have to agree :) I didn't expect such 
an explosion of userspace drivers being dependent on it, it was primarily 
meant for debugging and tweaking.

libusb is a similar example, I believe.

-- 
Jiri Kosina
SUSE Labs

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
