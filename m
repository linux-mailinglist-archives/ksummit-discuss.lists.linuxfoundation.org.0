Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0ACC54D209
	for <lists@lfdr.de>; Wed, 15 Jun 2022 21:53:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D69240BD3;
	Wed, 15 Jun 2022 19:53:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hVK-I4YugQKx; Wed, 15 Jun 2022 19:53:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 108CA40BE5;
	Wed, 15 Jun 2022 19:53:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C23FFC002D;
	Wed, 15 Jun 2022 19:53:04 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 55336C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 19:53:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3D8B741767
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 19:53:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id clBM7Ez4ff9E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 19:53:00 +0000 (UTC)
X-Greylist: delayed 01:17:22 by SQLgrey-1.8.0
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F038741734
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 19:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=gtnnX6klUWQEcikUKPGoGUdYoMHlpY+N4nHMmVtdQMY=; b=CAAiUL5q0lU4C1qwJRJxrLeOl/
 H2qSnP2l6oYkh/nB3BOd/nKOrUyNllVzjTMbODojwZRGAZCJF/bmhstg1osdfFKBam6jhMZiuMtU8
 Yqkn8ZtfE6FEnsHBFH16FYV+Bdc8Ulu8lHG1W0YmGvXiL79HDdQiEjdb7UP5qos47Cliq63B4poH6
 vo/6+tUY/bYoO5ISO/mxpkYR5o6kCKrDPFTZ3KvIwcDHbOg/Og7oWCq+b0kCk4GDjHe2sKNByZLOe
 92tOj3+P/ImWwYohRA67L9A2pW9hIFuS86PIGMv4nmImjUhF+dLGm33T2fZynY/sNBl19aZY8Dno5
 Zt0RBCXQ==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2
 (Red Hat Linux)) id 1o1Xrd-00FvsN-5F; Wed, 15 Jun 2022 18:35:37 +0000
Date: Wed, 15 Jun 2022 11:35:37 -0700
From: Luis Chamberlain <mcgrof@kernel.org>
To: Jiri Kosina <jkosina@suse.cz>
Message-ID: <Yqomeez5G+ML001L@bombadil.infradead.org>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Wed, Jun 15, 2022 at 08:55:47AM +0200, Jiri Kosina wrote:
> I feel like we are currently lacking a clear borderline, defining what is 
> still acceptable by the community to be implemented in terms of eBPF, and 
> what is over the line as it'd be causing big supportability and 
> maintainability concerns (see e.g. Christoph's concern to the HID eBPF 
> implementation implications [2]).
> 
> So I'd like to propose a session where we'd ideally converge closer to 
> defining a borderline between acceptable and non-acceptable usecases for 
> eBPF in the kernel.

Can't the equivalent of an LSM be used for these considerations?

  Luis
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
