Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC37F18262C
	for <lists@lfdr.de>; Thu, 12 Mar 2020 01:19:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B05F8929A;
	Thu, 12 Mar 2020 00:19:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fzXEYP2xOZ3n; Thu, 12 Mar 2020 00:19:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 65002892A3;
	Thu, 12 Mar 2020 00:19:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 26878C0177;
	Thu, 12 Mar 2020 00:19:53 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9B500C0177
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 12 Mar 2020 00:19:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8EE9D861B2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 12 Mar 2020 00:19:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yCiPH2it01YF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 12 Mar 2020 00:19:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C1F89861BC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 12 Mar 2020 00:19:48 +0000 (UTC)
Received: by mail-qk1-f180.google.com with SMTP id u25so4044627qkk.3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 11 Mar 2020 17:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=labbott.name; s=google;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=MO+EQlWMy0kzz1J1x9/iOGY80QsD1Dxgz1zaFvELTUk=;
 b=TOS3dxr5Ig5VZh/pLdbhl97cPhAHs3l8lln+0ZfH48xYNyB1AiqddC4eiEzGqHacnK
 YWr5Xk4C8gBK+tqIT3tFAukZ+q1A5Fkp4BEDr48ygEUjJLwIQ+US1lHwE5quULAMggSA
 os3OHpxJ4IZBuMYoTj9fbKLfvnvPjeFUaa2HA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=MO+EQlWMy0kzz1J1x9/iOGY80QsD1Dxgz1zaFvELTUk=;
 b=C6Hh2pNl9AWb1E4DP8uuvMU/3WZfXEah/oQJWeA80Q0LXSrF+N6C1avtJ4/xR7yVFm
 YeikMhqTALZvaRJLhn60Mw1pdpNMf5oFP2ytITYkz5/kO9J6ZPlqe3wWf5UT5foQ5ciq
 LkUivXM2TH1ZJf2RzKT3hqzxPgtt0a9QnTbk/fCkLcisSvFJiKnDVj8mwG0W0z3Ww12a
 Np1MHpjpsQISDJwssLN4ZEuO+u1Zx3Y2IAfXhjyjeyt22EdQKm5eBxbL0C/r4po7lGpv
 sQNhXGh992vn1rRMY6i8mFf0MDniqQb9rYLqdku9ESeFTKu+D01RsiqF1IsgCmIWXevy
 omHw==
X-Gm-Message-State: ANhLgQ0ZuInU9A+cfet1Zg1INq15rjKbJAb6P0Doq93XyLhh35fgvT/T
 4oJ/oiO5VcYCIyVJ8O89HrhD2w==
X-Google-Smtp-Source: ADFU+vtUdWuPKWU6jivVJtfRI9yGeYMlXVU0Dr0Ugglypra2uQ3ag3RxvXgdRlxkFfyAdDVIj8IAww==
X-Received: by 2002:a05:620a:1129:: with SMTP id
 p9mr5033995qkk.220.1583972387622; 
 Wed, 11 Mar 2020 17:19:47 -0700 (PDT)
Received: from Lauras-MBP.fios-router.home
 (pool-96-235-39-235.pitbpa.fios.verizon.net. [96.235.39.235])
 by smtp.gmail.com with ESMTPSA id k14sm1719962qkh.63.2020.03.11.17.19.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Mar 2020 17:19:47 -0700 (PDT)
To: tech-board-discuss@lists.linuxfoundation.org,
 ksummit-discuss@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
From: Laura Abbott <laura@labbott.name>
Message-ID: <6d6dd6fa-880f-01fe-6177-281572aed703@labbott.name>
Date: Wed, 11 Mar 2020 20:19:46 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [Ksummit-discuss] Linux Foundation Technical Advisory Board
 Elections -- Change to charter
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On behalf of the Linux Foundation Technical Advisory Board (TAB), I
would like to announce the following changes to our charter, available
at https://wiki.linuxfoundation.org/tab/start

- Line 2b that previously read "All members shall be elected by a vote
amongst all invitees of the Linux Kernel Summit." is changed to "All
members shall be elected by a vote amongst all attendees of the Linux
Kernel Summit."

This clarifies that kernel summit is no longer invite only.

- Under meetings and membership, the following line is added
"The TAB, at its discretion, may set criteria to allow for absentee
voting for those who are unable to attend the Linux Kernel Summit."

For those who like diff form, this looks like

diff --git a/charter b/charter
index 45816d7..70b2e56 100644
--- a/charter
+++ b/charter
@@ -4,7 +4,8 @@
      - Promote and Support the programmes with which the TAB is charged 
to the wider Linux and Open Source Communities.
    - Meetings and Membership.
      - The TAB consists of ten voting members.
-    - All members shall be elected by a vote amongst all invitees of 
the Linux Kernel Summit.
+    - All members shall be elected by a vote amongst all attendees of 
the Linux Kernel Summit.
+    - The TAB, at its discretion, may set criteria to allow for 
absentee voting for those who are unable to attend the Linux Kernel Summit.
      - Self nominations for the election shall be accepted from any 
person, via email to the TAB mailing list, up until the time of the 
election.
      - Membership of the TAB shall be for a term of 2 years with 
staggered 1-year elections.
      - The TAB shall elect a Chair and Vice-Chair of the TAB from 
amongst their members to serve a renewable 1 year term.


This change is intended to be a follow on to last year's changes to vote
electronically instead of using paper ballots
(see 
https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2019-July/006582.html)
We will be announcing criteria for absentee voting at a later date.

If you have any questions, feel free to speak up here or privately at
tab@lists.linuxfoundation.org.

Thanks,
Laura
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
