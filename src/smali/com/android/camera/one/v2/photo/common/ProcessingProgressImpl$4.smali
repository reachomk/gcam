.class final Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$4;
.super Ljava/lang/Object;
.source "ProcessingProgressImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->updateProgressMessage(Lcom/android/camera/ui/UiString;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;

.field private synthetic val$message:Lcom/android/camera/ui/UiString;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;Lcom/android/camera/ui/UiString;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$4;->this$0:Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$4;->val$message:Lcom/android/camera/ui/UiString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$4;->this$0:Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQRRE5T874RR3CLPN6QBECT874RR7E9IN6SQ9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___(Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;)Lcom/android/camera/session/StackableSession;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$4;->val$message:Lcom/android/camera/ui/UiString;

    invoke-interface {v0, v1}, Lcom/android/camera/session/StackableSession;->setProgressMessage(Lcom/android/camera/ui/UiString;)V

    .line 107
    return-void
.end method
