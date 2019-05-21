.class public final Lcom/android/camera/memory/MemoryQuery;
.super Ljava/lang/Object;
.source "MemoryQuery.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activityManager:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "MemoryQuery"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/memory/MemoryQuery;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/ActivityManager;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/camera/memory/MemoryQuery;->activityManager:Landroid/app/ActivityManager;

    .line 41
    return-void
.end method


# virtual methods
.method public final queryMemory()Ljava/util/HashMap;
    .locals 32

    .prologue
    .line 51
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/memory/MemoryQuery;->activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v16

    .line 52
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/memory/MemoryQuery;->activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v17

    .line 53
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 54
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/memory/MemoryQuery;->activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v5, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 55
    iget-wide v6, v4, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v8, 0x100000

    div-long v18, v6, v8

    .line 56
    iget-wide v6, v4, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v8, 0x100000

    div-long v20, v6, v8

    .line 57
    iget-wide v6, v4, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    const-wide/32 v8, 0x100000

    div-long v22, v6, v8

    .line 58
    iget-boolean v0, v4, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    move/from16 v24, v0

    .line 61
    new-instance v25, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct/range {v25 .. v25}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 62
    invoke-static/range {v25 .. v25}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 65
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v26

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    .line 69
    const-wide/16 v14, 0x0

    .line 70
    const-wide/16 v12, 0x0

    .line 71
    const-wide/16 v10, 0x0

    .line 72
    const-wide/16 v8, 0x0

    .line 73
    const-wide/16 v6, 0x0

    .line 74
    const-wide/16 v4, 0x0

    .line 76
    if-eqz v26, :cond_0

    .line 77
    const/4 v4, 0x1

    new-array v4, v4, [I

    .line 78
    const/4 v5, 0x0

    aput v26, v4, v5

    .line 79
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/memory/MemoryQuery;->activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v5, v4}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v4

    .line 80
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v5

    int-to-long v6, v5

    const-wide/16 v8, 0x400

    div-long v14, v6, v8

    .line 81
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v5

    int-to-long v6, v5

    const-wide/16 v8, 0x400

    div-long v12, v6, v8

    .line 82
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v5

    int-to-long v6, v5

    const-wide/16 v8, 0x400

    div-long v10, v6, v8

    .line 83
    const/4 v5, 0x0

    aget-object v5, v4, v5

    iget v5, v5, Landroid/os/Debug$MemoryInfo;->nativePss:I

    int-to-long v6, v5

    const-wide/16 v8, 0x400

    div-long v8, v6, v8

    .line 84
    const/4 v5, 0x0

    aget-object v5, v4, v5

    iget v5, v5, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    int-to-long v6, v5

    const-wide/16 v26, 0x400

    div-long v6, v6, v26

    .line 85
    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/os/Debug$MemoryInfo;->otherPss:I

    int-to-long v4, v4

    const-wide/16 v26, 0x400

    div-long v4, v4, v26

    .line 88
    :cond_0
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 89
    const-string v27, "timestamp"

    new-instance v30, Ljava/lang/Long;

    move-object/from16 v0, v30

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v27, "availMem"

    new-instance v30, Ljava/lang/Long;

    move-object/from16 v0, v30

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v27, "totalMem"

    new-instance v30, Ljava/lang/Long;

    move-object/from16 v0, v30

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v27, "totalPSS"

    new-instance v30, Ljava/lang/Long;

    move-object/from16 v0, v30

    invoke-direct {v0, v10, v11}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v27, "lastTrimLevel"

    new-instance v30, Ljava/lang/Integer;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    move/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v27, "totalPrivateDirty"

    new-instance v30, Ljava/lang/Long;

    move-object/from16 v0, v30

    invoke-direct {v0, v14, v15}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v14, "totalSharedDirty"

    new-instance v15, Ljava/lang/Long;

    invoke-direct {v15, v12, v13}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v12, "memoryClass"

    new-instance v13, Ljava/lang/Long;

    move/from16 v0, v16

    int-to-long v14, v0

    invoke-direct {v13, v14, v15}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v12, "largeMemoryClass"

    new-instance v13, Ljava/lang/Long;

    move/from16 v0, v17

    int-to-long v14, v0

    invoke-direct {v13, v14, v15}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v12, "nativePSS"

    new-instance v13, Ljava/lang/Long;

    invoke-direct {v13, v8, v9}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v12, "dalvikPSS"

    new-instance v13, Ljava/lang/Long;

    invoke-direct {v13, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v12, "otherPSS"

    new-instance v13, Ljava/lang/Long;

    invoke-direct {v13, v4, v5}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v12, "threshold"

    new-instance v13, Ljava/lang/Long;

    move-wide/from16 v0, v22

    invoke-direct {v13, v0, v1}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v12, "lowMemory"

    new-instance v13, Ljava/lang/Boolean;

    move/from16 v0, v24

    invoke-direct {v13, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v12, Lcom/android/camera/memory/MemoryQuery;->TAG:Ljava/lang/String;

    const-string v13, "timestamp=%d, availMem=%d, totalMem=%d, totalPSS=%d, lastTrimLevel=%d, largeMemoryClass=%d, nativePSS=%d, dalvikPSS=%d, otherPSS=%d,threshold=%d, lowMemory=%s"

    const/16 v14, 0xb

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 110
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 111
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 112
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 113
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v14, v15

    const/4 v10, 0x4

    move-object/from16 v0, v25

    iget v11, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 114
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v14, v10

    const/4 v10, 0x5

    .line 115
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v14, v10

    const/4 v10, 0x6

    .line 116
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v14, v10

    const/4 v8, 0x7

    .line 117
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v14, v8

    const/16 v6, 0x8

    .line 118
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v14, v6

    const/16 v4, 0x9

    .line 119
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v14, v4

    const/16 v4, 0xa

    .line 120
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v14, v4

    .line 106
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-static {v12, v4}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-object v26
.end method
