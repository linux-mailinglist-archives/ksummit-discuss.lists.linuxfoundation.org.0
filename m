Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF26184AAA
	for <lists@lfdr.de>; Fri, 13 Mar 2020 16:26:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 88E6984AE2;
	Fri, 13 Mar 2020 15:26:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c0kR2eJkoR-A; Fri, 13 Mar 2020 15:26:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C7D98875B6;
	Fri, 13 Mar 2020 15:26:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 97020C18D3;
	Fri, 13 Mar 2020 15:26:46 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AB845C0177;
 Fri, 13 Mar 2020 15:26:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8D414233B8;
 Fri, 13 Mar 2020 15:26:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Eyyy47VPe5GZ; Fri, 13 Mar 2020 15:26:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by silver.osuosl.org (Postfix) with ESMTPS id A4DAE231B1;
 Fri, 13 Mar 2020 15:26:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 0BFD98EE111;
 Fri, 13 Mar 2020 08:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1584113202;
 bh=o2W1sIitaU9EdMMf7U/2e2clLPQy2HbQwjU0rL7X0iQ=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=gv8cHf4ZwR9mcg343YvWSC7ZCFfIMi6lw6evmB3SL3WUHeoAhM9RLYI06LvuAo0bQ
 Q2IDvKUZ0gq8oTRfsxLz7RHyxjYrMLZlMxNFouhHc/lwbbVJtyvqFqC3Q6J2MaS3h6
 UwuZrAovNRVNDWwlA5nOPm+WV44/zmgRF5lG4OlI=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id GdPuLdhlpgJi; Fri, 13 Mar 2020 08:26:41 -0700 (PDT)
Received: from [153.66.254.194] (unknown [50.35.76.230])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 72C5B8EE10C;
 Fri, 13 Mar 2020 08:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1584113201;
 bh=o2W1sIitaU9EdMMf7U/2e2clLPQy2HbQwjU0rL7X0iQ=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=dbAK9Q2TaWRlaousAmgnhiiqT47e1H1BdW24PAEymd/Ql5bZrkYG4e/TY+Zg8789O
 3b8WUUcONzKrgpvbJJzPG0F8SDUYNNFk4zDmv2WDJK2Z9svFOdsWjm/F7PpxmDEfRs
 sHYcTix6JgmNblfMxNXFJrSJuNNqYgpaQpm9s6xQ=
Message-ID: <1584113200.3391.16.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jani Nikula <jani.nikula@intel.com>, "Theodore Y. Ts'o" <tytso@mit.edu>
Date: Fri, 13 Mar 2020 08:26:40 -0700
In-Reply-To: <87wo7ojnrl.fsf@intel.com>
References: <20200313031947.GC225435@mit.edu> <87d09gljhj.fsf@intel.com>
 <20200313093548.GA2089143@kroah.com>
 <24c64c56-947b-4267-33b8-49a22f719c81@suse.cz>
 <20200313100755.GA2161605@kroah.com>
 <CAMuHMdVSxS1R2osYJh29aKGaqMw3NkTRgqgRWuhu4euygAAXVg@mail.gmail.com>
 <20200313103720.GA2215823@kroah.com>
 <CAMuHMdW6Br+x+_9xP+X4xr6FP_uNpZ6q6065RJH-9yFy_8fiZA@mail.gmail.com>
 <20200313081216.627c5bdf@gandalf.local.home> <874kusl50q.fsf@intel.com>
 <20200313145206.GE225435@mit.edu> <87wo7ojnrl.fsf@intel.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
Cc: Vlastimil Babka <vbabka@suse.cz>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] Linux Foundation
 Technical Advisory Board Elections -- Change to charter
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

On Fri, 2020-03-13 at 17:08 +0200, Jani Nikula wrote:
> On Fri, 13 Mar 2020, "Theodore Y. Ts'o" <tytso@mit.edu> wrote:
> > On Fri, Mar 13, 2020 at 04:10:29PM +0200, Jani Nikula wrote:
> > > 
> > > Have you considered whether the eligibility for running and
> > > voting should be made the same? As it is, absolutely anyone can
> > > self-nominate and run.
> > 
> > That's always been the case.  However, at least historically,
> > people who weren't physically present has never been successful.
> 
> Oh? May I ask for that to be clarified in the TAB charter, please.

It's a historical observation, not a rule.  In fact, it does have an
exception: GregKH was elected in Edinburgh in 2012 without being
physically present at the voting (although he was in Edinburgh at the
time).

James

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
