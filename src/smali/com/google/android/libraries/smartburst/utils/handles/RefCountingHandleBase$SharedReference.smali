.class final Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandleBase$SharedReference;
.super Ljava/lang/Object;
.source "RefCountingHandleBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandleBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SharedReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "THandle::",
        "Lcom/google/android/libraries/smartburst/utils/handles/Handle",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public volatile mDetached:Z

.field public final mHandle:Lcom/google/android/libraries/smartburst/utils/handles/Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTHandle;"
        }
    .end annotation
.end field

.field public final mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTHandle;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandleBase$SharedReference;->mHandle:Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandleBase$SharedReference;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandleBase$SharedReference;->mDetached:Z

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/smartburst/utils/handles/Handle;B)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandleBase$SharedReference;-><init>(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)V

    return-void
.end method
