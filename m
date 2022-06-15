Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1B254C239
	for <lists@lfdr.de>; Wed, 15 Jun 2022 08:55:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B4A1140B99;
	Wed, 15 Jun 2022 06:55:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2KWAlRQ48U0M; Wed, 15 Jun 2022 06:55:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 1315B40B82;
	Wed, 15 Jun 2022 06:55:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BB1B2C0081;
	Wed, 15 Jun 2022 06:55:54 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 37AD0C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 06:55:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 26AD083495
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 06:55:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=suse.cz header.b="zqzPftki";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=suse.cz header.b="gNozygvU"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NbOtkx0Ug-mS
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 06:55:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 39E8C83410
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 06:55:50 +0000 (UTC)
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id 20B7B1F38D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 06:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1655276148; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type;
 bh=s6jvdRg/f+I85sb8aDXpeQlVxhlCzfzTCpDmxZobhgI=;
 b=zqzPftkimxEfM4545BBQgAur9rolNQ6h+wi45jy0xEMcdeA4tDeGpLbCoC+0uYExRF7xNJ
 aw2qgWdYfyoR1x6Gz0mvUPBmrpKrQRUo4FMFE1SYF8dGfaqINUNkbVyfpdkEeubkDR1dil
 +HP7nYWJFe4CK1jHB8dXUz40auSy5pM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1655276148;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type;
 bh=s6jvdRg/f+I85sb8aDXpeQlVxhlCzfzTCpDmxZobhgI=;
 b=gNozygvUddWArkKc3Jj1XSBOuDDjye9vEZS02zx6cZAuP4hEE5gLz4jC9ghIyc+LHcGw0/
 YGnuCLw27IitvFCA==
Received: from pobox.suse.cz (pobox.suse.cz [10.100.2.14])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id 145352C141
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 06:55:48 +0000 (UTC)
Date: Wed, 15 Jun 2022 08:55:47 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
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

As everyone is pretty much aware, eBPF adoption is quickly expanding for 
various usecases in the kernel. For example, there has recently been 
effort invested into adding eBPF support to HID subsystem [1], in order to 
make adding quirks for specific devices easier, not requiring a "full" 
proper driver for devices that just need a tiny bit of special handling 
here and there but apart from that can be handled by the generic driver 
just fine.

While there are many proponents of "eBPF is good for everything and your 
grandma" aproach, this opinion is not universally shared. One big risk is 
that this will eventually lead to possibility of having whole drivers / 
core code written in eBPF, which could potentially lead to decreased 
maintainability and supportability, also due to big fragmentation of the 
code (eBPF programs might not necessarily be shipped together with the 
kernel codebase).

This could potentially be a big risk for distros as well, as we (as a 
distro vendor) might be very quickly losing control over what is actually 
running in the context of the kernel they are bound to be supporting.

In the specific case of drivers, there also is also some similarity in 
principle with UDI, which is a concept that hasn't proved viable quite 
some time ago already :)

I feel like we are currently lacking a clear borderline, defining what is 
still acceptable by the community to be implemented in terms of eBPF, and 
what is over the line as it'd be causing big supportability and 
maintainability concerns (see e.g. Christoph's concern to the HID eBPF 
implementation implications [2]).

So I'd like to propose a session where we'd ideally converge closer to 
defining a borderline between acceptable and non-acceptable usecases for 
eBPF in the kernel.

[1] https://lore.kernel.org/all/20220518205924.399291-1-benjamin.tissoires@redhat.com/
[2] https://lore.kernel.org/all/YoX7iHddAd4FkQRQ@infradead.org/

Thanks,

-- 
Jiri Kosina
SUSE Labs
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
