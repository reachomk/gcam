.class final Lcom/android/camera/storage/PeriodicStorageSpaceChecker$1;
.super Ljava/lang/Object;
.source "PeriodicStorageSpaceChecker.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/storage/PeriodicStorageSpaceChecker;-><init>(Lcom/android/camera/storage/detachablefile/DetachableFolder;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Ljava/util/Timer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1051
    new-instance v0, Ljava/util/Timer;

    const-string v1, "PeriodicStorageSpaceCheckerTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 48
    return-object v0
.end method
