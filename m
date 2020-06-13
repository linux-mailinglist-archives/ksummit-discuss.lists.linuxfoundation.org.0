Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E611F8450
	for <lists@lfdr.de>; Sat, 13 Jun 2020 18:43:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1F3D287AEE;
	Sat, 13 Jun 2020 16:43:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zsONJL0imzjo; Sat, 13 Jun 2020 16:42:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF9EF87692;
	Sat, 13 Jun 2020 16:42:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A3DFCC0893;
	Sat, 13 Jun 2020 16:42:58 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BAF28C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 13 Jun 2020 16:42:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A410388AA9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 13 Jun 2020 16:42:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dHNu1+mStboK
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 13 Jun 2020 16:42:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C699B88A9D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 13 Jun 2020 16:42:52 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.73,507,1583190000"; d="scan'208";a="351506055"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2020 18:42:49 +0200
Date: Sat, 13 Jun 2020 18:42:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Shuah Khan <skhan@linuxfoundation.org>
In-Reply-To: <edbf4ead-6f2d-e548-ee40-517b3ee6ba07@linuxfoundation.org>
Message-ID: <alpine.DEB.2.22.394.2006131838130.2659@hadrien>
References: <20200609145353.628a342d@lwn.net>
 <CACRpkdZOxaA9fpd0zFa_GGo1boOEbOoxNbaUavXbewp=CLbEDg@mail.gmail.com>
 <8f68863a-d04c-4502-f88e-2a8b0e3c7968@linuxfoundation.org>
 <928d6b2c9a8afb4262a0d931bce03987ef002c8f.camel@perches.com>
 <20200612090706.GF2051223@linux.ibm.com>
 <edbf4ead-6f2d-e548-ee40-517b3ee6ba07@linuxfoundation.org>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
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

I tried collecting information about missing or incorrectly formatted
function documentation using Coccinelle.  Here is an example of the
output:

drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: extra names mod, f_isr, h_src_arg
drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: missing name isr_cb
drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: missing name module
drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: missing name src_arg
drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr: return comment but no return value
drivers/net/ethernet/freescale/fman/fman.c:2103 fman_unregister_intr: extra names mod
drivers/net/ethernet/freescale/fman/fman.c:2103 fman_unregister_intr: missing name module
drivers/net/ethernet/freescale/fman/fman.c:2103 fman_unregister_intr: return comment but no return value
drivers/net/ethernet/freescale/fman/fman.c:2355 fman_get_revision: return comment but no return value
drivers/net/ethernet/freescale/fman/fman.c:2520 fman_bind: extra names dev
drivers/net/ethernet/freescale/fman/fman.c:2520 fman_bind: missing name fm_dev
drivers/net/ethernet/freescale/fman/fman.c:2527 fman_has_errata_a050385: no comment for fman_has_errata_a050385

It's not illustrated here, but if it can find documentation for the same
variable with the same type somewhere else in the same file, it suggests
that, and it finds a mention of the function in the Documentation
directory, it give the name of that file.

I assumed that all EXPORT_SYMBOLs and EXPORT_SYMBOL_GPLs should be
documented.  Perhaps this was an overapproximation, because it seems like
a lot of them are not.

julia
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
