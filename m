Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 666BAA01DA
	for <lists@lfdr.de>; Wed, 28 Aug 2019 14:35:09 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 47B8F2DFE;
	Wed, 28 Aug 2019 12:34:44 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F262F2DD4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 12:34:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
	[91.189.89.112])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 68DA5756
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 12:34:21 +0000 (UTC)
Received: from [213.220.153.21] (helo=wittgenstein)
	by youngberry.canonical.com with esmtpsa
	(TLS1.0:RSA_AES_256_CBC_SHA1:32) (Exim 4.76)
	(envelope-from <christian.brauner@ubuntu.com>)
	id 1i2x9S-0001Yn-HQ; Wed, 28 Aug 2019 12:34:14 +0000
Date: Wed, 28 Aug 2019 14:34:13 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Thomas Gleixner <tglx@linutronix.de>, dianders@chromium.org
Message-ID: <20190828123412.vng4m7kqxirhxxe3@wittgenstein>
References: <20190826230206.GC28066@mit.edu>
	<alpine.DEB.2.21.1908270133190.1939@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1908270133190.1939@nanos.tec.linutronix.de>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
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

On Tue, Aug 27, 2019 at 01:43:23AM +0200, Thomas Gleixner wrote:
> On Mon, 26 Aug 2019, Theodore Y. Ts'o wrote:
> > On Mon, Aug 26, 2019 at 03:06:43PM -0700, Doug Anderson wrote:
> > > 2. If, as I expect, Change-Id as part of the patch stays NAKed then I
> > > will modify the tools I use to post upstream (currently patman) to
> > > encode the Change-Id.  My naive proposal would be:
> > > 
> > > Message-Id: ChangeId-YYYY-MMDD-HHMMSS-PatchNum
> > > 
> > > If I try this and it works for me then I will post out and suggest
> > > that any other like-minded people encode Change-Id into Message-Id in
> > > a similar way.
> > 
> > ... and I would expect patches with this would get NACK'ed because
> > they would be just as useless as Change-Id's are perceived to be
> > today.  People who are gaming the rules will tend not to looked upon
> > favorably; the same will apply to their patches.
> > 
> > BTW, the Message-Id you've listed above is not legal, per RFC-5322.  A
> > msg-id has to look like a e-mail address (left-hand-side@example.com).
> > So something like this is legal as a message id:
> > 
> > I3268f9036512c4378cde1da37e0612b43ed4d384@linux-review.googlesource.com
> > 
> > ... and indeed, that's more useful, because it tells us how to
> > interpret I3268f9036512c4378cde1da37e0612b43ed4d384 --- it's a
> > Change-Id assigned by the linux-review.googlesource.com Gerrit server.
> > 
> > In contrast a bare "I3268f9036512c4378cde1da37e0612b43ed4d384" is
> > going to be presumed to be useless.  And in fact, a Google search for
> > this ID returns *nothing*.  Yet visiting the link
> > https://linux-review.googlesource.com/c/1158 actually returns
> > something useful.   That's why the latter is superior to the former.
> 
> That's fine, but the point is that nobody will prevent you from frobbing
> your message-id's in a way which encodes other information into it as long
> as the message-id is RFC compliant. We simply don't care because the result
> is just a message-id as any other in the mail header of your patch
> submission,
> 
> I agree that a full gerrit link is more useful, but what Doug described is
> not connected to a gerrit server at all. He just (ab)uses the tooling which
> allows him to create a unique ID to track versions of his patches.
> 
> Actually not the worst idea. If the result is not part of the changelog and
> just part of the email then generating the id with
> 
>      id = make_msgid(ChangeId)
> 
> will still generate something useful for everyone because we can add:
> 
>      Link: https://lore.kernel.org/lkml/$id
> 
> and Doug can grep the archives for $id.
> 
> I truly don't care whether the Message-ID header contains extra information
> as long as it is properly formatted.

This whole thread is rather complex at this point. I have been sick for
a few days now and couldn't follow it too closely because of that. At
this point it kinda feels like there's some agreement on using Link:
instead of Change-Id: but I'm not sure what best practives are for
generating this Link: including the message id and wher it needs to be
placed (commit message, after ---, only in email header?). So the most
important task is to document what exactly is considered good practice
somewhere (probably in the kernel docs):

@Doug, are you planning on sending a docs patch for this or sm?

Christian
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
