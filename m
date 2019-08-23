Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAF39B4E7
	for <lists@lfdr.de>; Fri, 23 Aug 2019 18:50:37 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 65C991064;
	Fri, 23 Aug 2019 16:50:23 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 04E9BD38
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 16:50:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 33F4E89E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 16:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=RyxZ96BQjBTWYjN+L0xgrB4iiWweRFkbV5XlVjuUt8I=;
	b=Cse39Iux46PP2DoA7M0vSnciuo
	4H9sK2ssS43+l8WzljkXcmT27E8CETfJJ/YJNhiFjEdrWszZClXUiKOqC65vfyUIdOiZelIfkTR+f
	UVC9+MHqGvcu+wV56OjLCKhWeF65nXnbbMq4h6ELauyKat6+HPcXbLlu62XHPyd2iiy4=; 
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
	(envelope-from <andrew@lunn.ch>)
	id 1i1ClW-0005aR-Sm; Fri, 23 Aug 2019 18:50:18 +0200
Date: Fri, 23 Aug 2019 18:50:18 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Doug Anderson <dianders@chromium.org>
Message-ID: <20190823165018.GB19727@lunn.ch>
References: <20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<CAD=FV=VcvTTO9k4idg9mA4HxKy-3zm47vvqHvS86yJW8G8cRRg@mail.gmail.com>
	<alpine.DEB.2.21.1908231751490.1896@nanos.tec.linutronix.de>
	<alpine.DEB.2.21.1908231758320.1896@nanos.tec.linutronix.de>
	<CAD=FV=WwghONxW_OzMoJ1-n7Fd4uyt=VPngOqv0NjNMkgd6Rhg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=WwghONxW_OzMoJ1-n7Fd4uyt=VPngOqv0NjNMkgd6Rhg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
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

> 1. Make it allowed or suggested to put a well-formed (machine
> parseable) Change-Id "after the cut" on mailing list posts, which
> would allow you to associate v1, v2, and v3.
> 
> 2. Add "Link://lkml.kernel.org/r/$MSGID_PER_PATCH" to landed patches,
> which would allow you to recover the Change-Id even after a patch
> lands.
> 
> ...then I will be happy (ish).  The biggest downside I see here is
> that it is much less likely that random committers out there will get
> this right.  The way committers naturally have the same Change-Id from
> v1 to v2 to v3 is because it's part of the commit message and when you
> amend to a previous change it stays there.  That means that these
> people will need to remember to move the Change-Id to "after the cut"
> unless we teach git-send-email to do this for you (though I guess
> maybe we could do that?).

To make this reliable, we really need git to be doing the work. We
should also think about the typical developer workflow.

To create a v1 of a patch, i do a git commit. To make a v2, i'm likely
to be using git rebase -i; git commit --am.

So why not have the initial git commit allocate the UUID. git commit
--am leaves the UUID alone. git-format-patch can then put the UUID
after the ---. Can git-send-email generate the MSGID from the UUID?

      Andrew
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
