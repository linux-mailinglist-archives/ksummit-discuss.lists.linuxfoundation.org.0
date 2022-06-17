Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F4454F23D
	for <lists@lfdr.de>; Fri, 17 Jun 2022 09:54:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B71740A81;
	Fri, 17 Jun 2022 07:54:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B71740A81
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=QBJYpEWb
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KdjKiU8Xgpau; Fri, 17 Jun 2022 07:54:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 36B4C40A09;
	Fri, 17 Jun 2022 07:54:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 36B4C40A09
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D0547C002D;
	Fri, 17 Jun 2022 07:54:03 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6237AC002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 07:54:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 27FA060B58
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 07:54:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27FA060B58
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=QBJYpEWb
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w6gYpZPUMgdN
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 07:54:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58CA160AC1
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 58CA160AC1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 07:54:01 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 1C456B827A1;
 Fri, 17 Jun 2022 07:53:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFAECC3411B;
 Fri, 17 Jun 2022 07:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1655452436;
 bh=72ZHF8E0X/SFstqv1eFrOy53iVjugdamJzI3uiYYWG4=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=QBJYpEWbsC+gGzZboGTQohDqtsJrJKW7qQvQ1LWcumBZfkjz4pMyTvAy5p7inDVo2
 p2Eg42ZIKHHcsAwycAtVv1ZHS6J+e/UotgSwERXp34fwglbw4Nfok4+ADsbP9aufBp
 5kj6ToGHn2stHWu2ORBKANef1gBeu9vCiQViU/J3mSOWt9eMdBJGI//ajj00qJH2I/
 mf56y6ZADZz2aEBr7aGNVdiWlMG7MU7i68Xh3Dho58uYk2SFUY8xDEUo72M0VVbQ4H
 bPXGisly0CBYZwlaalfx0wRGujcIuPEMGv86AZILC6edx9cysU+sRLXdqlmW0ZM+Ro
 SBUQpYJK1kUmA==
Date: Fri, 17 Jun 2022 09:53:52 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <a522bfa4241eb263e354ebbb293b0d629dd2e026.camel@HansenPartnership.com>
Message-ID: <nycvar.YFH.7.76.2206170947520.14340@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan> <87h74lvnyf.fsf@meer.lwn.net>
 <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
 <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
 <20220616122634.6e11e58c@gandalf.local.home>
 <bbb46f66bb8518e90030fe97a1225adf178654d1.camel@HansenPartnership.com>
 <20220616125128.68151432@gandalf.local.home>
 <a522bfa4241eb263e354ebbb293b0d629dd2e026.camel@HansenPartnership.com>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Cc: "Paul E. McKenney" <paulmck@kernel.org>,
 ksummit-discuss@lists.linuxfoundation.org,
 Peter Zijlstra <peterz@infradead.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Luca Weiss <luca@z3ntu.xyz>, Christoph Hellwig <hch@lst.de>
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

On Thu, 16 Jun 2022, James Bottomley wrote:

> > If you want a "stable ebpf program" then you submit it upstream and
> > we can make sure that it works with any internal API changes, the
> > same way we do for modules. Those with out-of-tree modules will have
> > the technical debt of changing every time a new kernel release is
> > out, and so should out-of-tree bpf programs.
> 
> Assuming eBPF takes off, that would have some poor maintainer managing
> the whole of the compatibility changes for the entire eBPF ecosystem
> ... I really don't think that's scalable.

I nevertheless still see this as the best and only option we have; that 
is, have an infrastructure in the kernel tree for maintaining eBPF 
programs, somehow sorted per subsystem so that it mirrors the standard 
maintainership / subsystem structure proper, and have the maintainers 
responsible for keeping the eBPF programs related to their subsystem in 
sync with the internal changes happening in the subsystem.

At the end of the day, it will be the subsystem maintainers themsleves 
accepting the program into the tree in the first place, so it's not like 
they are receiving responsibility for something they never wanted in the 
first place. So we'll probably end up with subsystems with many eBPF 
programs, and also subsystems with zero. Similarly to tracepoints.

I.e. pretty much the 'perf' model, but on much wider scale (as eBPF can 
hook to just about anything).

Any other option seems to lead to having eBPF programs sprinkled all over 
the internet that depend on particular kernel version / API, leading to 
nothing else than unhappy users, because "I downloaded it, it didn't work, 
Linux sucks".

-- 
Jiri Kosina
SUSE Labs

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
