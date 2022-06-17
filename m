Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB8754FE95
	for <lists@lfdr.de>; Fri, 17 Jun 2022 22:57:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 942DE4176A;
	Fri, 17 Jun 2022 20:57:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 942DE4176A
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=lwn.net header.i=@lwn.net header.a=rsa-sha256 header.s=20201203 header.b=o2DZ88UA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zP88_BMqfJRr; Fri, 17 Jun 2022 20:57:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 576B541701;
	Fri, 17 Jun 2022 20:57:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 576B541701
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CD2EAC002D;
	Fri, 17 Jun 2022 20:57:15 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CB01DC002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 20:57:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A5C0040995
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 20:57:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5C0040995
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9NdtcnVUbSxG
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 20:57:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C312C40922
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C312C40922
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 20:57:12 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:281:8300:73::5f6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 9AD2E380;
 Fri, 17 Jun 2022 20:57:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net 9AD2E380
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
 t=1655499431; bh=QHrwIn58SgXl8Bet1v2+WpPM77eMl/K5oLiuEM/QJYI=;
 h=From:To:Subject:Date:From;
 b=o2DZ88UA3mBD8QWmyxSsUoOyzZgCaihw4FaHxyh1E+YJnHM/AQgxeVmj8hvkQkNKe
 RzNXmDzN0XRPKPuqBdub0n4lQIIYZO1Wc9aW+i+naSRObD0rkvNxQXYXyGnX43XSWx
 oOb8qfjSO2cFa/qynDLwae/3Pe8nxokzXLyLCBqUxk5A7cILb77FHWlVxCicMQASvB
 dSxIROlT7UrwEl0hh88nVczHF7VOtAqxeKmSs8iSaXgPJ8c8205jEOnPCGt2O+DnKi
 DmSVSefZ7DulhMR/7ENjj/ianFH1e8TwFiCqwNMbiDMteGUY+lgDgFuczZ1tZoJzio
 lTx+m3gz6P0dQ==
From: Jonathan Corbet <corbet@lwn.net>
To: ksummit-discuss@lists.linuxfoundation.org, ksummit@lists.linux.dev
Date: Fri, 17 Jun 2022 14:57:10 -0600
Message-ID: <87sfo3nh3t.fsf@meer.lwn.net>
MIME-Version: 1.0
Subject: [Ksummit-discuss] [TECH TOPIC] What kernel documentation could be
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

The development community has put a lot of work into the kernel's
documentation directory in recent years, with visible results. But the
kernel's documentation still falls far short of the standard set by many
other projects, and there is a great deal of "tribal knowledge" in our
community that is not set down. I'd like to look at the successes and
failures of the work so far, but intent to focus on a discussion of what
our documentation should be and what we can do to get it there.

Questions to discuss include:

 - Bringing an coherent overall structure to Documentation/

 - Making it easier for developers to improve the documentation.

 - What we would like from Sphinx and what we can do to make it happen

 - Making the docs build system less ugly and more maintainable

 - Integrating rustdoc documentation

jon
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
