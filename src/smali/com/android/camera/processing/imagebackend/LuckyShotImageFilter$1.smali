.class final Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$1;
.super Ljava/lang/Object;
.source "LuckyShotImageFilter.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->startWithFutureListener$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQ3C5O78TBICL9MASRJD5NMSEP99HHMUR9FCTNMUPRCCKNM6RRDDLNMSBRLEHKMOBR3DTN66TBIE9IMST1F9HKN6T35DPGM4R358PQN8TBICKTG____(Lcom/android/camera/session/StackableSession;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;

.field private synthetic val$captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;


# direct methods
.method constructor <init>(Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;Lcom/android/camera/session/StackableSession;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$1;->this$0:Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;

    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$1;->val$captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 286
    invoke-static {}, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lucky Shot Filter failed to return valid result."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 276
    check-cast p1, Ljava/util/Set;

    .line 1279
    if-eqz p1, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$1;->this$0:Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter$1;->val$captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;->processFilteredResult$5166KOBMC4NNAT39DGNL6PBK7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQ3C5O78TBICL9MASRJD5NMSEP9AO______(Ljava/util/Set;Lcom/android/camera/session/StackableSession;)V

    .line 276
    :cond_0
    return-void
.end method
