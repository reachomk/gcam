.class final Lcom/android/camera/one/v2/imagesaver/trace/validation/ImageSaverTraceValidator$1;
.super Ljava/lang/Object;
.source "ImageSaverTraceValidator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagesaver/trace/validation/ImageSaverTraceValidator;->processTrace(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ImageSaverTraceValidator$1;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ImageSaverTraceValidator$1;->val$exception:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
