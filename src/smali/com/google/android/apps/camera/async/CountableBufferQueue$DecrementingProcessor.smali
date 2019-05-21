.class final Lcom/google/android/apps/camera/async/CountableBufferQueue$DecrementingProcessor;
.super Ljava/lang/Object;
.source "CountableBufferQueue.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/async/CountableBufferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecrementingProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final processor:Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;

.field private synthetic this$0:Lcom/google/android/apps/camera/async/CountableBufferQueue;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/camera/async/CountableBufferQueue;Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/android/apps/camera/async/CountableBufferQueue$DecrementingProcessor;->this$0:Lcom/google/android/apps/camera/async/CountableBufferQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/google/android/apps/camera/async/CountableBufferQueue$DecrementingProcessor;->processor:Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/camera/async/CountableBufferQueue;Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;B)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/camera/async/CountableBufferQueue$DecrementingProcessor;-><init>(Lcom/google/android/apps/camera/async/CountableBufferQueue;Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;)V

    return-void
.end method


# virtual methods
.method public final process(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CountableBufferQueue$DecrementingProcessor;->processor:Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;

    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;->process(Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CountableBufferQueue$DecrementingProcessor;->this$0:Lcom/google/android/apps/camera/async/CountableBufferQueue;

    invoke-static {v0}, Lcom/google/android/apps/camera/async/CountableBufferQueue;->access$000(Lcom/google/android/apps/camera/async/CountableBufferQueue;)V

    .line 27
    return-void
.end method
