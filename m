Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A08A31F9C6E
	for <lists@lfdr.de>; Mon, 15 Jun 2020 17:58:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3BEB188B10;
	Mon, 15 Jun 2020 15:58:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jiruc-+Bvb0S; Mon, 15 Jun 2020 15:58:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7468B8899D;
	Mon, 15 Jun 2020 15:58:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 60F42C016E;
	Mon, 15 Jun 2020 15:58:47 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 89587C016E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 15 Jun 2020 15:58:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7FB4086375
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 15 Jun 2020 15:58:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wjD7Kgy7EGlv
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 15 Jun 2020 15:58:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BCDBD86283
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 15 Jun 2020 15:58:43 +0000 (UTC)
Received: from callcc.thunk.org (pool-100-0-195-244.bstnma.fios.verizon.net
 [100.0.195.244]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 05FFweKd027351
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 15 Jun 2020 11:58:40 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id D9BEA42026D; Mon, 15 Jun 2020 11:58:39 -0400 (EDT)
Date: Mon, 15 Jun 2020 11:58:39 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: linux-kernel@vger.kernel.org, inux-fsdevel@vger.kernel.org,
 linux-mm@kvack.org, netdev@vger.kernel.org, linux-block@vger.kernel.org,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>
Message-ID: <20200615155839.GF2863913@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Ksummit-discuss] Maintainers / Kernel Summit 2020 submissions
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

So far, we have received 5 techinical topic submissions for the Kernel
Summit; thanks to those who have submitted.  If you have some
additional ideas of technical topics you'd like to discuss at the
Kernel Summit, please submit them this week.  For details on how to
proposal a topic for the Kernel Summit, please see [1].

[1] https://lore.kernel.org/r/20200515163956.GA2158595@mit.edu

We have not, so far, gotten any submissions for the Maintainer's
Summit.  It's unclear whether this is because people have been
distracted with issues relating to the pandemic situation, or whether
things have been going swimingly from a process perspective, or if
people are just not as motivated to suggest topics if they can't
discuss them in a face-to-face setting as opposed to a virtual setting
---- or some combination of all of the above.

If you do have some ideas for things that you think are worth the
attention of a Maintainer's Summit this year, please kindly submit
them this week.  (Again, please see [1] for submission instructions.)
If we do not get sufficient submissions, we will need to consider
whether or not it makes sense to hold a Maintainer's Summit this year.

Thanks,

					- Ted
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
