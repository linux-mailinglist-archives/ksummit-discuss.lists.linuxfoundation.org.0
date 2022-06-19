Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 090EB550CB5
	for <lists@lfdr.de>; Sun, 19 Jun 2022 21:08:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C33560B9C;
	Sun, 19 Jun 2022 19:08:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C33560B9C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xd0PuDsAhZ72; Sun, 19 Jun 2022 19:08:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 8020D60E76;
	Sun, 19 Jun 2022 19:08:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8020D60E76
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 19F25C002D;
	Sun, 19 Jun 2022 19:08:25 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5FBE2C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 19:08:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 343B14058F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 19:08:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 343B14058F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p6lS1BCZKzxz
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 19:08:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E494C40471
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E494C40471
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 19:08:21 +0000 (UTC)
Received: by mail-qk1-f169.google.com with SMTP id c144so6562993qkg.11
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 12:08:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OzoWA0G5jxlkcRZIeVNLZAKCGcQYNqBC2xUBPGoWpTU=;
 b=ixaQkA02/Q3zfDcJ0dR4fkqjqINUMej+j03JhHEbllg3VfuUT0o1gU1e39ZebwGN6I
 dHytw3Dw7E3hUS3LkQxIhVRv1IL+rK7cDPITaIGS1D1f/sWTsJ/rtLOsUSoaIj2H/4ms
 Ul7T1R2BCk5RJjqGLv+TksEL40nsVyUhEl3Pew3uhfiBV7OKRzjA9TvlmuWE9o0gd6iA
 jokVD8JPGB+kNZiE2kDGVEH0dOLxs2wYZqBTmoOUCSVhypkOnfN2tClK4o0zU3u+E+QQ
 DyTSaAcbRUxP/ASXx3Jj0K0EpfbqzBTkuw39qQQaKorZNeIzSVfNYdjpm1OwECzPaUmD
 3bgg==
X-Gm-Message-State: AJIora96XAtcJBxaNo4vNFaHZ6T3YHZJ6O6NmCf10exucbmfHjefutqD
 HURo4F17Wyr1vXRtBcw51G+4kBHY/xHKXw==
X-Google-Smtp-Source: AGRyM1t7LaXktaVnpYNmLdqORuexLQp07wIe7MHkfZjykMFK2bvQoIBR5+cKi7/de5ycYF+b8OWwcQ==
X-Received: by 2002:a05:620a:4007:b0:6a6:d0ec:94a9 with SMTP id
 h7-20020a05620a400700b006a6d0ec94a9mr14401376qko.179.1655665700516; 
 Sun, 19 Jun 2022 12:08:20 -0700 (PDT)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com.
 [209.85.128.180]) by smtp.gmail.com with ESMTPSA id
 v17-20020ac87291000000b00307cbfa9bf8sm5869026qto.70.2022.06.19.12.08.20
 for <ksummit-discuss@lists.linuxfoundation.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 19 Jun 2022 12:08:20 -0700 (PDT)
Received: by mail-yw1-f180.google.com with SMTP id
 00721157ae682-317803b61e5so56405037b3.1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 12:08:20 -0700 (PDT)
X-Received: by 2002:a81:3a81:0:b0:317:7dcf:81d4 with SMTP id
 h123-20020a813a81000000b003177dcf81d4mr16072677ywa.47.1655665699902; Sun, 19
 Jun 2022 12:08:19 -0700 (PDT)
MIME-Version: 1.0
References: <CANiq72nNKvFqQs9Euy=_McfcHf0-dC_oPB3r8ZJii2L3sfVjaw@mail.gmail.com>
 <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com> <Yq6+p+aRCjeZ7QsS@infradead.org>
 <Yq70keAYGQQmyJLm@pendragon.ideasonboard.com>
 <2513dc4528c71d34d400c104e91ada6517869886.camel@HansenPartnership.com>
 <Yq8pXroV+23xr5w5@pendragon.ideasonboard.com>
In-Reply-To: <Yq8pXroV+23xr5w5@pendragon.ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sun, 19 Jun 2022 21:08:08 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW02U7qdvGNqijyg_5NbJ3aKyCB8j26FjeAMR-aMY_bDQ@mail.gmail.com>
Message-ID: <CAMuHMdW02U7qdvGNqijyg_5NbJ3aKyCB8j26FjeAMR-aMY_bDQ@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
 Christoph Hellwig <hch@infradead.org>, ksummit@lists.linux.dev,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Rust
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

Hi Laurent,

On Sun, Jun 19, 2022 at 3:49 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> On Sun, Jun 19, 2022 at 08:56:46AM -0400, James Bottomley wrote:
> > On Sun, 2022-06-19 at 13:04 +0300, Laurent Pinchart wrote:
> > > On Sat, Jun 18, 2022 at 11:13:59PM -0700, Christoph Hellwig wrote:
> > > > On Sat, Jun 18, 2022 at 11:42:07PM +0300, Laurent Pinchart wrote:
> > > > > All previous topics but this one are technical. To restore the
> > > > > balance a bit (and also because I believe it's important to the
> > > > > success of this project :-)), I'd like to also discuss the impact
> > > > > on the kernel maintenance at large, beyond just the maintainers
> > > > > who opt in to be early adopters of rust in their subsystem.
> > > >
> > > > Yes.  That is I think the most important point.
> > > >
> > > > I've played around with rust a bit for userspace project, and there
> > > > is things I like a lot like strict type safety and the ownership
> > > > model, and things I detest like verbose and unlogic syntax, the
> > > > cargo cult of vendoring libraries instead of a sane shared library
> > > > and versioning model (althought that should be largerly irrelevant
> > > > for the kernel), and compared to many other languages it seems
> > > > overall rather sane.
> >
> > This is more or less my assessment from playing with rust as well.
> >
> > > > But I'm really worried about the impact on the kernel, as interface
> > > > between languages are a real pain, and so far I'm not convinced at
> > > > all that this pain is worth the gain, even if that could change in
> > > > the future.
> > >
> > > One point I'd like to explicitly address, as it seems to be very
> > > relevant to me when it comes to whether or not the pain is worth the
> > > gain, is how we'll deal with the fact that the rust compiler will
> > > tell a non-negligible [*] part of the kernel developers that they
> > > don't have the skills to write kernel code. Will we have a credible
> > > option to offer there to help people improve their skills set, and
> > > how will we deal with the fact that some people will be left on the
> > > side of the road ? Or would we acknowledge what may be the elephant
> > > in the room that this would actually be a good thing for the kernel
> > > code quality ? What about the impact on a community that is already
> > > overworked and prone to burn-out ?
> > >
> > > [*] I have no way to quantify this at the moment, maybe I'm overly
> > > pessimistic, and the number will likely vary depending on areas,
> > > probably impacting BSPs differently than mainline.
> >
> > I don't think that's a huge concern.  After all rust isn't going to
> > penetrate every subsystem all at once ... and realistically it will
> > only penetrate some subsystems if there's the ability to review it.
> >
> > I really doubt anyone at the maintainer or reviewer level of the kernel
> > doesn't have the ability to learn rust (now whether they have the
> > desire to is quite another matter) and I'd be surprised if we can find
> > any kernel developer who only speaks C.  I think the biggest problem
> > with rust is that there's definitely an anti-C bias in the language.
> > What I mean by that is if you look at Java they chose to be as close to
> > C where possible to make the language easier to learn.  Rust seems to
> > have taken the opposite view and picked a lot of things which could
> > have been C like (typing, function calls, returns, mutability, etc.)
> > and done them differently just because they wanted to be different from
> > C.  That does cause issues for C people because you tend to trip over
> > the anti-C biases in the language and are constantly having to look the
> > basic syntax up.  This really increases the learning curve going from C
> > to rust, which gets annoying very fast, but it's not insurmountable.
>
> Time to invent a C-like version of rust ? :-) Jokes aside, as far as I
> understand the syntax is different from C because it was inspired by
> other languages, not out of a desire to be anti-C. I could be wrong
> though, and it doesn't really matter anyway, I doubt there's anything we
> could do there.

When reading "things which could have been C like", I had the exact
same thought ;-)

In the past, many new paradigms were implemented in a variety of new
languages, usually inspired by other languages (e.g. some looked like
C, others like Pascal).

At the risk of sounding too procrastinating (perfect is the enemy
of good, and see James' thread about becoming too fearful...),
perhaps it is wise to question if Rust arrived too soon, and a more
C-like language implementing the same safety paradigms is just around
the corner, or already in its infancy?

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
