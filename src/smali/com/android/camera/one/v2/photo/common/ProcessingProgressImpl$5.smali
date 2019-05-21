.class final Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$5;
.super Ljava/lang/Object;
.source "ProcessingProgressImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->updateProgress(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;

.field private synthetic val$progress:F


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;F)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$5;->this$0:Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;

    iput p2, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$5;->val$progress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$5;->this$0:Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQRRE5T874RR3CLPN6QBECT874RR7E9IN6SQ9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___(Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;)Lcom/android/camera/session/StackableSession;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$5;->val$progress:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/android/camera/session/StackableSession;->setProgress(I)V

    .line 123
    return-void
.end method
