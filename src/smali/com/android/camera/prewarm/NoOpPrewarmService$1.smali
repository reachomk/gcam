.class final Lcom/android/camera/prewarm/NoOpPrewarmService$1;
.super Ljava/lang/Object;
.source "NoOpPrewarmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/prewarm/NoOpPrewarmService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/prewarm/NoOpPrewarmService;


# direct methods
.method constructor <init>(Lcom/android/camera/prewarm/NoOpPrewarmService;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/camera/prewarm/NoOpPrewarmService$1;->this$0:Lcom/android/camera/prewarm/NoOpPrewarmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/prewarm/NoOpPrewarmService$1;->this$0:Lcom/android/camera/prewarm/NoOpPrewarmService;

    invoke-static {v0}, Lcom/android/camera/prewarm/NoOpPrewarmService;->access$000(Lcom/android/camera/prewarm/NoOpPrewarmService;)V

    .line 32
    return-void
.end method
