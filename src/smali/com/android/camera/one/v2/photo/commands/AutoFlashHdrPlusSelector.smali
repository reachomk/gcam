.class final Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusSelector;
.super Lcom/google/android/apps/camera/async/TransformedObservable;
.source "AutoFlashHdrPlusSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/TransformedObservable",
        "<",
        "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
        "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
        ">;"
    }
.end annotation


# instance fields
.field private final hdrPlus:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

.field private final hdrPlusTorch:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

.field private final normal:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

.field private final normalFlash:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "AutoFlashHdrPSelect"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/async/TransformedObservable;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 31
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusSelector;->normal:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 32
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusSelector;->normalFlash:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 33
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusSelector;->hdrPlus:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 34
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusSelector;->hdrPlusTorch:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 35
    return-void
.end method


# virtual methods
.method protected final synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 14
    check-cast p1, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    .line 1039
    invoke-virtual {p1}, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1049
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid AutoHdrPlusRecommendation enum instance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1041
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusSelector;->normal:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 1047
    :goto_0
    return-object v0

    .line 1043
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusSelector;->normalFlash:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    goto :goto_0

    .line 1045
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusSelector;->hdrPlus:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    goto :goto_0

    .line 1047
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusSelector;->hdrPlusTorch:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    goto :goto_0

    .line 1039
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
