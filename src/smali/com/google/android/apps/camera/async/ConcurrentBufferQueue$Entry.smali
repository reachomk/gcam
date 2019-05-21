.class final Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;
.super Ljava/lang/Object;
.source "ConcurrentBufferQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/async/ConcurrentBufferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final closing:Z

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;->value:Ljava/lang/Object;

    .line 46
    iput-boolean p2, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;->closing:Z

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;ZB)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final isClosingMarker()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$Entry;->closing:Z

    return v0
.end method
