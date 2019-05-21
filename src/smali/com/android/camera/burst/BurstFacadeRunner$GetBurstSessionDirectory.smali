.class final Lcom/android/camera/burst/BurstFacadeRunner$GetBurstSessionDirectory;
.super Ljava/lang/Object;
.source "BurstFacadeRunner.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/BurstFacadeRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetBurstSessionDirectory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final burstSessionDirectoryFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic this$0:Lcom/android/camera/burst/BurstFacadeRunner;


# direct methods
.method public constructor <init>(Lcom/android/camera/burst/BurstFacadeRunner;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/camera/burst/BurstFacadeRunner$GetBurstSessionDirectory;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iput-object p2, p0, Lcom/android/camera/burst/BurstFacadeRunner$GetBurstSessionDirectory;->burstSessionDirectoryFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 497
    return-void
.end method

.method private final getBaseSessionDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner$GetBurstSessionDirectory;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    .line 522
    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeRunner;->access$400(Lcom/android/camera/burst/BurstFacadeRunner;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner$GetBurstSessionDirectory;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    invoke-static {v1}, Lcom/android/camera/burst/BurstFacadeRunner;->access$1900(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/android/camera/storage/FilesProxy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/session/SessionStorageManagerImpl;->create(Landroid/content/Context;Lcom/android/camera/storage/FilesProxy;)Lcom/android/camera/session/SessionStorageManager;

    move-result-object v0

    .line 524
    :try_start_0
    const-string v1, "burst"

    invoke-interface {v0, v1}, Lcom/android/camera/session/SessionStorageManager;->getSessionDirectory(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 525
    :catch_0
    move-exception v0

    .line 528
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 529
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 490
    check-cast p1, Ljava/lang/Boolean;

    .line 1501
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1502
    const-string v0, "burst-%d"

    new-array v1, v5, [Ljava/lang/Object;

    .line 1503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1504
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/camera/burst/BurstFacadeRunner$GetBurstSessionDirectory;->getBaseSessionDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1505
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1506
    invoke-static {}, Lcom/android/camera/burst/BurstFacadeRunner;->access$1200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to create burst session directory: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner$GetBurstSessionDirectory;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeRunner;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6AKJLDPN6ASHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6A922ELP76T2GE9NM6PBJEDKMSPQGC5P62RB5EHIN4SPR(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/android/camera/hdrplus/HdrPlusModule;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/hdrplus/HdrPlusModule;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    invoke-interface {v0}, Lcom/android/camera/error/FatalErrorHandler;->onMediaStorageFailure()V

    .line 1508
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to create burst session directory: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1506
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1508
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 1511
    :cond_2
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner$GetBurstSessionDirectory;->burstSessionDirectoryFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 1512
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    return-object v0

    .line 1514
    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2
.end method
