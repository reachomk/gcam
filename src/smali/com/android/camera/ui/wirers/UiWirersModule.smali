.class public Lcom/android/camera/ui/wirers/UiWirersModule;
.super Ljava/lang/Object;
.source "UiWirersModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static providePreviewTransformCalculator$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQN8QBC5TM62UBFELQ2UJRID5IMST31EHKMURIDC5N62PR5E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAQ9F8DGN0T3LE9IKOOBPDTQN8I35DHO6ASHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUK3ICLR6IPBNAHP62RJJCPNN4RA3C5M66TBCC5Q6USHR(Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/ui/CaptureLayoutHelper;)Lcom/android/camera/module/PreviewTransformCalculator;
    .locals 1

    .prologue
    .line 1019
    new-instance v0, Lcom/android/camera/module/PreviewTransformCalculator;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/PreviewTransformCalculator;-><init>(Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/ui/CaptureLayoutHelper;)V

    return-object v0
.end method
