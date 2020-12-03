Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B95B92CD7C0
	for <lists@lfdr.de>; Thu,  3 Dec 2020 14:41:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8E51687B7D;
	Thu,  3 Dec 2020 13:41:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aMHcGaGEMAte; Thu,  3 Dec 2020 13:41:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id C5C9F87BB2;
	Thu,  3 Dec 2020 13:41:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8504EC0FA7;
	Thu,  3 Dec 2020 13:41:47 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8DBBAC0FA7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 13:41:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7B9C987B61
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 13:41:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id db5NONNR2Qhy
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 13:41:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C502087B55
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 13:41:42 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.78,389,1599516000"; d="scan'208";a="480918393"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 14:41:40 +0100
Date: Thu, 3 Dec 2020 14:41:40 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Dan Carpenter <dan.carpenter@oracle.com>
In-Reply-To: <20201203103351.GR2767@kadam>
Message-ID: <alpine.DEB.2.22.394.2012031440400.2799@hadrien>
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
 <20201203103351.GR2767@kadam>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Vlastimil Babka <vbabka@suse.cz>
Subject: Re: [Ksummit-discuss] crediting bug reports and fixes folded into
 original patch
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



On Thu, 3 Dec 2020, Dan Carpenter wrote:

> I'd like a "Fixes-from: Name email" tag for when someone spots a bug in
> a patch.
>
> I think we should not give credit for style complaints, because those
> are their own reward and we already have enough bike shedding.

I agree with Dan, although I'm quite ok with the current situation as
well.

julia
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
