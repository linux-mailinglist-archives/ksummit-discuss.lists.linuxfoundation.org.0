Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 000F12CDEC1
	for <lists@lfdr.de>; Thu,  3 Dec 2020 20:24:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE02E87B20;
	Thu,  3 Dec 2020 19:24:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VdLiJk1pnHhE; Thu,  3 Dec 2020 19:24:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4F96D87B3F;
	Thu,  3 Dec 2020 19:24:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1818CC0FA7;
	Thu,  3 Dec 2020 19:24:49 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EC042C0FA7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 19:24:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E7F6C87D31
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 19:24:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rSoem-fdxWPC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 19:24:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0076.hostedemail.com
 [216.40.44.76])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 92BBA87D30
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 19:24:46 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 65A38100E7B44;
 Thu,  3 Dec 2020 19:24:45 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 30, 2, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:988:989:1028:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2553:2559:2562:2693:2731:2828:2829:2892:2900:2901:2902:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3874:4321:4388:4885:5007:6271:6757:7875:7914:9010:10010:10400:10848:11232:11658:11783:11914:12297:12740:12895:13095:13149:13230:13255:13439:13894:14181:14659:14721:21080:21433:21451:21627:21939:21985:30046:30054:30062:30070:30075:30079:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:1:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: lake02_0209186273be
X-Filterd-Recvd-Size: 3285
Received: from XPS-9350.home (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf12.hostedemail.com (Postfix) with ESMTPA;
 Thu,  3 Dec 2020 19:24:44 +0000 (UTC)
Message-ID: <46efd4f2168b58c0da45c08b120a1b3deef9e169.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Date: Thu, 03 Dec 2020 11:24:43 -0800
In-Reply-To: <20201203191731.bpzvwqfldhcjhzfy@chatter.i7.local>
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
 <694039d6e386d999fd74d038cf2627f5b3b0ca71.camel@HansenPartnership.com>
 <3c11134905f06185dda4e9125f2fb7fd30fff979.camel@perches.com>
 <20201203191731.bpzvwqfldhcjhzfy@chatter.i7.local>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>, Vlastimil Babka <vbabka@suse.cz>,
 LKML <linux-kernel@vger.kernel.org>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Thu, 2020-12-03 at 14:17 -0500, Konstantin Ryabitsev wrote:
> On Thu, Dec 03, 2020 at 08:55:54AM -0800, Joe Perches wrote:
> > Perhaps automate a mechanism to capture that information as
> > git notes for the patches when applied.
> =

> Git notes have a limited usefulness for this -- they are indeed part of =

> the repository, but they aren't replicated unless someone does a =

> --mirror clone (or specifically fetches refs/notes/*). If the goal is to =

> improve visibility for contributors, then putting this info into a git =

> note will hardly make more difference than providing a Link: that =

> someone has to follow to a list archival service.

Or it becomes standard to fetch the refs/notes/... at the pull time.

> I can offer the following proposal:
> =

> - kernel.org already monitors all mailing lists that are archived on =

> =A0=A0lore.kernel.org for the purposes of pull request tracking =

> =A0=A0(pr-tracker-bot).
> - in the near future, we will add a separate process that will =

> =A0=A0auto-explode all pull requests into individual patches and add them
> =A0=A0to a separate public-inbox archive (think of it as another =

> =A0=A0transparency log, since pull requests are transient and opaque).
> =

> We can additionally:
> =

> - identify all Link: and Message-Id: entries in commit messages, =

> =A0=A0retrieve the threads they refer to, and archive them as part of the =

> =A0=A0same (or adjacent) transparency log.
> =

> This offers an improvement over the status quo, because if =

> lore.kernel.org becomes unavailable, someone would have to have access =

> to all backend archive repositories it is currently tracking in order to =

> be able to reconstitute relevant conversations -- whereas with this =

> change, it should be sufficient to just have the copy of the =

> transparency log to have a fully self-contained high-relevancy archive =

> of both individual commits and conversations that happened around them.

I think that would be great.  Thanks.

I think all the requests for additional -by: -from: signature/bylines
becoe unnecessary if and when this proposal is implemented.


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
