Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F0E34A4DA
	for <lists@lfdr.de>; Fri, 26 Mar 2021 10:49:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9004C4024B;
	Fri, 26 Mar 2021 09:49:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gF2b90BDG6vR; Fri, 26 Mar 2021 09:49:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE98B4024F;
	Fri, 26 Mar 2021 09:49:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C0606C000A;
	Fri, 26 Mar 2021 09:49:03 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 40B5AC000A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 09:49:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2750D40249
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 09:49:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qQU26YOj35AE
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 09:49:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C464E40239
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 09:49:00 +0000 (UTC)
Received: from ip4d142c50.dynamic.kabel-deutschland.de ([77.20.44.80]
 helo=[192.168.66.200]); authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1lPj5M-0005ls-Of; Fri, 26 Mar 2021 10:48:56 +0100
To: Greg KH <gregkh@linuxfoundation.org>
References: <c396c91f-27c2-de36-7b05-099e03c213f4@leemhuis.info>
 <YF2iYFEoc56sfeMx@kroah.com>
From: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <10737257-cfb5-b24b-4f37-a53fd791fb73@leemhuis.info>
Date: Fri, 26 Mar 2021 10:48:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <YF2iYFEoc56sfeMx@kroah.com>
Content-Language: en-BS
X-bounce-key: webpack.hosteurope.de;linux@leemhuis.info;1616752140;6bc9249c;
X-HE-SMSGID: 1lPj5M-0005ls-Of
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>, linux-doc@vger.kernel.org
Subject: Re: [Ksummit-discuss] FYI & RFC: obsoleting reporting-bugs and
 making reporting-issues official
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

On 26.03.21 09:59, Greg KH wrote:
> On Fri, Mar 26, 2021 at 07:13:09AM +0100, Thorsten Leemhuis wrote:
>>
>> Lo! Since a few months mainline in
>> Documentation/admin-guide/reporting-issues.rst contains a text written
>> to obsolete the good old reporting-bugs text. For now, the new document
>> still contains a warning at the top that basically says "this is WIP".
>> But I'd like to remove that warning and delete reporting-bugs.rst in the
>> next merge window to make reporting-issues.rst fully official. With this
>> mail I want to give everyone a chance to take a look at the text and
>> speak up if you don't want me to move ahead for now.
>>
>> For easier review I'll post the text of reporting-issues.rst in reply to
>> this mail. I'll do that in a few chunks, as if this was a cover letter
>> for a patch-set. Note, the version I'll send in some areas looks a bit
>> different from the one currently in mainline. That's because the text
>> I'll send already incorporates a few patches from docs-next that are
>> waiting for the next merge window; I also removed the "WIP" box as well
>> as two remaining "FIXME" notes, as those point to aspects I mention
>> below already.
>>
>> @Greg, @Sasha, I'd be especially glad if at least one of you two could
>> take a look and yell if there is something you really dislike from the
>> perspective of the stable maintainers.
>
> I responded to the specific email, but will again here.  No objection
> from me at all, 

Thx for taking a look!

> this is a great resource, thanks for doing this.

Very glad to hear, thx.

>  If,
> over time, it needs any tweaks to explain things that people commonly
> get wrong, that's easy to do,

Which likely will be the case, but that's life. :-D

> so don't worry about trying to capture
> "everything" right away.

Hah, I'm not worried about that (but yes, I have a tendency in that
direction...). I just feared something along the lines of "ohh, this is
all wrong, who sneaked this into the kernel behind our back". ;-)

Ciao, Thorsten
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
