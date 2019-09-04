Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 682FEA81E2
	for <lists@lfdr.de>; Wed,  4 Sep 2019 14:09:27 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 876FE14A4;
	Wed,  4 Sep 2019 12:09:11 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6E6891499
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  4 Sep 2019 12:08:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1B5EB709
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  4 Sep 2019 12:08:52 +0000 (UTC)
Received: from pendragon.ideasonboard.com
	(mobile-access-bceeb5-228.dhcp.inet.fi [188.238.181.228])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7E720440;
	Wed,  4 Sep 2019 14:08:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1567598929;
	bh=bV1zP9YY/t/WjY7BoqaVqJU3NPnI1qtdhoFHu4Mcqqw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mhScKBKFE2h64f1CpLPLMcq/zGY+dGA95LtN9OQLyMido/tBzgs2n7KvTS3q6xbk0
	Qz5d+POACjJ9Z6Tea0ZdoRtqDosA66mCAP2M75q47HUWKrcKuzYl3zjWxPezbKJKLY
	uVpYT4gSyVYXH4gnMkgPqWuyfZJuXM+G8sqBg2oo=
Date: Wed, 4 Sep 2019 15:08:43 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Message-ID: <20190904120843.GD4811@pendragon.ideasonboard.com>
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
	<CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
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
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

Hi Konstantin,

On Tue, Sep 03, 2019 at 01:27:08PM -0400, Konstantin Ryabitsev wrote:
> On Tue, Sep 03, 2019 at 09:07:00AM -0700, Linus Torvalds wrote:
> > I think some of the push-back to the GPU people wasn't from them not
> > inventing the group maintainership like Dave said, but from that being
> > presented as some kind of "this is the way to do it". When it's just
> > _one_ way to do it, and other groups have completely different
> > infrastructure and models..
> >
> > So I don't think we can force some workflows.
> 
> For quite some time now I've been trying to fund some client-side 
> tooling development around public-inbox (the software that drives 
> lore.kernel.org). Eric Wong (the principal author of public-inbox), and 
> I have had lengthy chats about potential functionality of such tool, and 
> what we envision can be described as "local patchwork with a mutt-like 
> interface":
> 
> - It would use public-inbox repositories to track new patches and 
>   conversations, so it would no longer be necessary to subscribe to the 
>   actual mailing list(s). Getting new mail would be equivalent to a "git 
>   pull".
> - It would have an equivalent of notmuch search, so instead of needing 
>   to go to lore.kernel.org, you could search the entire mailing list 
>   locally and perform actions on the results found.
> - Just like Patchwork, it would keep track of new patches and series of 
>   patches, recognize when new patch/series revisions are posted, track 
>   reviewed-by's, tested-by's, etc, and provide useful maintainer 
>   functionality, such as showing interdiffs between revisions.

I've been thinking about this for about a year now. One issue that makes
this difficult is that many M[UTD]A software mangle e-mails in a way
that make extracting information automatically pretty painful. Google's
answer to this was Gerrit, which solved this particular issue, but
disrupted the e-mail-based workflow in a way that is not acceptable to
many developers (myself included). A better, in my opinion, solution
would have been standardisation of a format to exchange review
information. Quite obviously going for a markup language (be it XML,
json, yaml or whatever is hype today) is a no-go, given that we would
destroy everybody's workflow again. My idea was to use a review format
that is as close to e-mail as possible (with > quote markers and
everything that people are already familiar with). Of course M[UTD]A
software would still mangle it, but given reasonable M[TD]As, I think we
could teach some of the MUAs commonly used (mutt comes to mind) to
behave properly (through plugins, scripts, settings files, ...). E-mails
that would not be mangled through the process would be easily parsable
by the tool you would like to develop. That would not give us full
coverage, but if we manage to establish such an end-to-end solution, we
could then push it to more MUAs. This would allow to tackle this complex
problem one step at a time, while not alienating developers by asking
them to leave their MUA. Over time we could the develop more tooling
around that review exchange format, once a large enough portion of
exchanged reviews will follow it.

I know I'm dreaming, but is anyone else sharing this dream ?

> - Patches and series can be pre-filtered by keywords or file paths (e.g.  
>   if you're only interested in arch/arm64/mm/.*, the tool would ignore 
>   any patches/revisions not touching files in that dir).
> - It would support creating workflows and conditional response actions, 
>   e.g. "create new branch, apply this series, run these test suites; if 
>   tests succeed, merge into branch `for-linus`; if merge successful, 
>   reply to submitter with 'thanks, applied!'; if all went well, archive 
>   the series; if any steps failed, flag the series for my review".
> - The workflows would run in the background, including using external 
>   systems if preferred. Maintainers can contribute their workflows to a 
>   shared repository so others can easily copy and adapt them.
> 
> That's obviously not a complete list, but it seems to me that something 
> like this would be quite welcome by a lot of maintainers (at least,
> everyone I've talked to about this got really excited).

I'd say it sounds too good to be true. Being often on the move I would
love a tool that would let me work offline. Even when online, being able
to run queries locally and script actions without the need for a web
browser interface would be amazing.

> Eric Wong is 
> quite willing to work on something like this, but he is not in a 
> position to donate so much of his time and effort (especially on top of 
> maintaining public-inbox) -- so if we want to see this happen, we need 
> to come up with some funds.
> 
> I've inquired internally at the Foundation, and while there's general 
> willingness to fund such initiatives, the People In Charge Of Money want 
> to see a buy-in from maintainers. The natural instinct is to talk to 
> Greg, but I believe he's quite happy with his workflow, so while I'm 
> sure he'd be happy to feign excitement, he's unlikely to be interested 
> in the tool. Linus is not the right person to talk to either, because he 
> doesn't deal with patches and tests, so wouldn't benefit from such tool.
> 
> So, my plan was to track down Shuah (who's also at the Foundation) and 
> Laura (who is on the TAB) at the upcoming summit to float this idea with 
> them to see what they think. However, since we're talking about 
> lore.kernel.org, tooling and workflows quite a bit already, I figured 
> I'll bring this up here as well.
> 
> It just seems that every maintainer I spoke with is generally making 
> things "sort-of work well enough" by applying a lot of baling wire 
> around mail clients, patchwork.kernel.org, gitlab, or all of the above, 
> and I'm wondering if everyone is happy to do that, or only doing that 
> because a good tool written to fit with the "kernel development model" 
> doesn't exist.
> 
> So:
> 
> - would a tool with such functionality be useful, or would every 
>   maintainer prefer to continue doing their own thing (in slightly 
>   different ways)?
> - would you (or your employer entity) be willing to participate in a 
>   fundraiser to help fund the development of such tool (in case we 
>   cannot get the LF to fully fund it)?
> - would it be okay if the tool is written in NPM/javascript?
> 
> Okay, just kidding about the NPM bit. ;)

You won't fool us, everybody knows it will be written in Rust ;-)

-- 
Regards,

Laurent Pinchart
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
