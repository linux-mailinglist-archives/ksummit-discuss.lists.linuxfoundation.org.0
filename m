Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B1FAA73E
	for <lists@lfdr.de>; Thu,  5 Sep 2019 17:26:41 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5E10619F8;
	Thu,  5 Sep 2019 15:26:26 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B3B441719
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Sep 2019 15:26:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1E0CB756
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Sep 2019 15:26:23 +0000 (UTC)
Received: from callcc.thunk.org (guestnat-104-133-0-96.corp.google.com
	[104.133.0.96] (may be forged)) (authenticated bits=0)
	(User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x85FQGuX032404
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Thu, 5 Sep 2019 11:26:17 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
	id 37EC942049E; Thu,  5 Sep 2019 11:26:16 -0400 (EDT)
Date: Thu, 5 Sep 2019 11:26:16 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190905152616.GB3766@mit.edu>
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
	<CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<87o8zzw7jt.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o8zzw7jt.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,MAY_BE_FORGED,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Thu, Sep 05, 2019 at 10:01:26AM +0300, Jani Nikula wrote:
> 
> At least I've tried (and likely also failed) to merely describe what we
> do, what works for us, how we think we benefit, and how it just might
> benefit others. It's just sad when the pushback is strong enough to
> discourage people from sharing their experiences to begin with.
> 
> I know I've reduced talking about it outside of the GPU people bubble.

I seem to recall at least one over-enthusiastic driver developer who
was so sure that group maintainership was The Way To Go that there may
have been, statements of the effect that everyone else should follow
in their footsteps.  No, not you, but there is a reason why there has
been that push back.

The bigger issue, however, is that there are those who are convinced
that it is a bug that different subsystems have different workflows,
and want to try to converge everyone to A Single Way Of Doing Things.
In some cases, such as trying to define exactly how the Link: or
Change-Id: or what URL to use with the Link: tag, before we even have
had a lot of experience with how things will work.

Others (and I happen to fall in that camp) believe that we should
allow people to experiment, because until we have lived experience
with these different workflows, we won't know how well they work.  If
it is obviously a better way of doing things, then people will adopt
it.  We don't need to legislate rules saying all maintainers must
follow exactly the same workflow, because they may be facing different
set of constraints.

They might not have access to the same continuous testing
infrastructure, especially for subsystems where special hardware is
required.  Or maybe they don't have enough developers and time of
those developers to for group maintainership requiring all patches be
reviewed.  Saying that we're going to force everyone to do things
Exactly The Same Way is not going to end well.

Admittedly, there are some downsides to per-subsystem variations.  It
does make it harder contributors to understand what they need to do in
order to get a patch accepted.  On the other hand, I believe that the
biggest problems in this area is not so much the workflow, but rather
how strict reviewers when they do their review.


For example, consider a new file system used on million devices all
over the world, and which has been consistently getting fix ups and
where the maintainer is very responsive.  What is the threshold before
(a) it gets accepted into staging, (b) it gets accepted as an "all
grown up file system"?  Some people seem to want near perfection
before it should be allowed into the kernel --- and that's why some
file systems have gone into the staging tree.  Some have argued that
file systems should never go through staging, but the reason why they
*do* is because many of these people are those who like to hold new
file systems to super-strict criteria, and others believe that staging
is a better alternative than an out-of-tree file system.

That's a much more profound disagreement than what workflow a
subsystem uses for review and testing, and what the level is of
nit-pickiness that should be used before allowing a commit or a new
subsystem into the tree is not something that can be easily
legislated.

(My opinion is that we are really hazing the prospective maintainer to
make sure they are going to stick around, and that it isn't going to
be a drive by contribution.  I also think we've elevated the criteria
for acceptance much too high, but at least amongst file system
developers, or at least the ones who speak up the most on fsdevel, I
fear I am in the minority.)

					- Ted
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
