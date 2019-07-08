Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 1889061D92
	for <lists@lfdr.de>; Mon,  8 Jul 2019 13:05:46 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6E70423E7;
	Mon,  8 Jul 2019 11:05:32 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7DB3623DC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 10:56:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C5511884
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 10:56:55 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 0937EAF31;
	Mon,  8 Jul 2019 10:56:54 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
	id C8E5A1E3F4D; Mon,  8 Jul 2019 12:47:16 +0200 (CEST)
Date: Mon, 8 Jul 2019 12:47:16 +0200
From: Jan Kara <jack@suse.cz>
To: Wolfram Sang <wsa@the-dreams.de>
Message-ID: <20190708104716.GA20507@quack2.suse.cz>
References: <20190706142738.GA6893@kunai>
	<20190706165214.GB18182@mtr-leonro.mtl.com>
	<20190706171724.GA12534@kunai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190706171724.GA12534@kunai>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
	meaningful
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

Hi!

On Sat 06-07-19 19:17:24, Wolfram Sang wrote:
> > Right now, everything is built on trust and it will continue to be after
> > we will demand to add extra sentence. It means that we don't fully trust
> > in Reviewed-by of one time contributors now and we won't trust in their
> > description of their Reviewed-by either.
> 
> Per default, I do trust a new contributor to have done the review. I
> don't want this extra sentence as a proof of that.
> 
> The "problem" with a new reviewer is that I don't know if all aspects of
> a patch have been reviewed or just a subset. Actually, this holds true
> for people I do know just the same way. If a get a Rev-by from Linus
> Walleij I am extremly sure the GPIO parts have been throughly checked.
> But I still don't know if he had time to check e.g. the locking or not.
> There is a huge difference if I get three plain Rev-by or three Rev-by
> saying "I did check <xy> but not the media parts".

There are two things here: If I review a patch and I'm not confident I did
a good job for some parts (because I didn't have time or I just don't know
that part of the kernel), then I should write that to the reply with
Reviewed-by tag. That's IMHO a good rule but I don't think you can enforce
it in any way. You can just ask people that do reviews for your subsystem
if you think they're omitting this.

The second thing is that if human doesn't know something, then he/she has
a tendency to underestimate how much he/she doesn't know (this even has a
psychological term "cognitive bias"). So the self-evaluation of "how good is
my review" is always going to be subjective and it is upto maintainer to
judge what is the value of the review.

To give an exaple, Ted Tso (ext4 maintainer) tends to just ignore "empty
Reviewed-by" replies from people that haven't built enough credit in the
kernel community by actually finding bugs with their reviews...

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
