Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 622312029CC
	for <lists@lfdr.de>; Sun, 21 Jun 2020 11:25:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 71E6486C25;
	Sun, 21 Jun 2020 09:25:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MRHThyy_YUg0; Sun, 21 Jun 2020 09:25:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9A9DA86C51;
	Sun, 21 Jun 2020 09:25:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 49A8BC016F;
	Sun, 21 Jun 2020 09:25:01 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A282AC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 21 Jun 2020 09:24:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 86B9B88157
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 21 Jun 2020 09:24:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GO89IoRJnrQF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 21 Jun 2020 09:24:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8BC4F88155
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 21 Jun 2020 09:24:57 +0000 (UTC)
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05L91tW0050367; Sun, 21 Jun 2020 05:24:55 -0400
Received: from ppma02fra.de.ibm.com (47.49.7a9f.ip4.static.sl-reverse.com
 [159.122.73.71])
 by mx0a-001b2d01.pphosted.com with ESMTP id 31shwtutf2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 21 Jun 2020 05:24:55 -0400
Received: from pps.filterd (ppma02fra.de.ibm.com [127.0.0.1])
 by ppma02fra.de.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 05L9LlrQ008046;
 Sun, 21 Jun 2020 09:24:52 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com
 (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
 by ppma02fra.de.ibm.com with ESMTP id 31sa380n09-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 21 Jun 2020 09:24:52 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 05L9NWTo64356812
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 21 Jun 2020 09:23:32 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 63F48A405F;
 Sun, 21 Jun 2020 09:24:50 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A9B08A4040;
 Sun, 21 Jun 2020 09:24:49 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.202.246])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Sun, 21 Jun 2020 09:24:49 +0000 (GMT)
Date: Sun, 21 Jun 2020 12:24:47 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20200621092447.GN6493@linux.ibm.com>
References: <20200621090539.GM6493@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200621090539.GM6493@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-21_03:2020-06-19,
 2020-06-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0
 priorityscore=1501 phishscore=0 adultscore=0 mlxscore=0 clxscore=1015
 spamscore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0
 cotscore=-2147483648 mlxlogscore=999 suspectscore=0 classifier=spam
 adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006210069
Cc: Marius Hillenbrand <mhillenb@amazon.de>,
 Alexandre Chartre <alexandre.chartre@oracle.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] restricted kernel address spaces
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

(oops, forgot to cc Kirill)

On Sun, Jun 21, 2020 at 12:05:39PM +0300, Mike Rapoport wrote:
> Hi,
> 
> This proposal is recycled from the one I've suggested to LSF/MM/BPF [0]. 
> Unfortunately, LSF/MM/BPF was cancelled, but I think it is still
> relevant.
> 
> Restricted mappings in the kernel mode may improve mitigation of hardware
> speculation vulnerabilities and minimize the damage exploitable kernel bugs
> can cause.
> 
> There are several ongoing efforts to use restricted address spaces in
> Linux kernel for various use cases:
> * speculation vulnerabilities mitigation in KVM [1]
> * support for memory areas with more restrictive protection that the
>   defaults ("secret", or "protected" memory) [2], [3], [4]
> * hardening of the Linux containers [ no reference yet :) ]
> 
> Last year we had vague ideas and possible directions, this year we have
> several real challenges and design decisions we'd like to discuss:
> 
> * "Secret" memory userspace APIs
> 
>   Should such API follow "native" MM interfaces like mmap(), mprotect(),
>   madvise() or it would be better to use a file descriptor , e.g. like
>   memfd-create does?
> 
>   MM "native" APIs would require VM_something flag and probably a page flag
>   or page_ext. With file-descriptor VM_SPECIAL and custom implementation of
>   .mmap() and .fault() would suffice. On the other hand, mmap() and
>   mprotect() seem better fit semantically and they could be more easily
>   adopted by the userspace.
> 
> * Direct/linear map fragmentation
> 
>   Whenever we want to drop some mappings from the direct map or even change
>   the protection bits for some memory area, the gigantic and huge pages
>   that comprise the direct map need to be broken and there's no THP for the
>   kernel page tables to collapse them back. Moreover, the existing API
>   defined in <asm/set_memory.h> by several architectures do not really
>   presume it would be widely used.
> 
>   For the "secret" memory use-case the fragmentation can be minimized by
>   caching large pages, use them to satisfy smaller "secret" allocations and
>   than collapse them back once the "secret" memory is freed. Another
>   possibility is to pre-allocate physical memory at boot time.
> 
>   Yet another idea is to make page allocator aware of the direct map layout.
> 
> * Kernel page table management
> 
>   Currently we presume that only one kernel page table exists (well,
>   mostly) and the page table abstraction is required only for the user page
>   tables. As such, we presume that 'page table == struct mm_struct' and the
>   mm_struct is used all over by the operations that manage the page tables.
> 
>   The management of the restricted address space in the kernel requires
>   ability to create, update and remove kernel contexts the same way we do
>   for the userspace.
> 
>   One way is to overload the mm_struct, like EFI and text poking did. But
>   it is quite an overkill, because most of the mm_struct contains
>   information required to manage user mappings.
> 
>   My suggestion is to introduce a first class abstraction for the page
>   table and then it could be used in the same way for user and kernel
>   context management. For now I have a very basic POC that slitted several
>   fields from the mm_struct into a new 'struct pg_table' [5]. This new
>   abstraction can be used e.g. by PTI implementation of the page table
>   cloning and the KVM ASI work.
> 
> [0] https://lore.kernel.org/linux-mm/20200206165900.GD17499@linux.ibm.com/ 
> [1] https://lore.kernel.org/lkml/20200504145810.11882-1-alexandre.chartre@oracle.com
> [2] https://lore.kernel.org/lkml/20190612170834.14855-1-mhillenb@amazon.de/
> [3] https://lore.kernel.org/lkml/20200130162340.GA14232@rapoport-lnx/
> [4] https://lore.kernel.org/lkml/20200522125214.31348-1-kirill.shutemov@linux.intel.com
> [5] https://git.kernel.org/pub/scm/linux/kernel/git/rppt/linux.git/log/?h=pg_table/v0.0
> 
> -- 
> Sincerely yours,
> Mike.
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

-- 
Sincerely yours,
Mike.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
