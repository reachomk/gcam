.class public final Lcom/android/camera/camcorder/CamcorderModule_ProvideVariableFpsRangeChooserFactory;
.super Ljava/lang/Object;
.source "CamcorderModule_ProvideVariableFpsRangeChooserFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final variableFpsRangeChooserImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/camera/VariableFpsRangeChooser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/camera/VariableFpsRangeChooser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderModule_ProvideVariableFpsRangeChooserFactory;->variableFpsRangeChooserImplProvider:Ljavax/inject/Provider;

    .line 19
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 10
    .line 1023
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderModule_ProvideVariableFpsRangeChooserFactory;->variableFpsRangeChooserImplProvider:Ljavax/inject/Provider;

    .line 1024
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/camera/VariableFpsRangeChooser;

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideVariableFpsRangeChooser$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5THM2RB5E9GIULJ1E9KM2OJCCL370SQIC5N6EPA3D1NMUSR5E94MQS3C7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NM6OBDCLP62BQMC5P6IOB2DHIKCS3JA9GMSPR58DK6URRJCLP3M___(Lcom/android/camera/camcorder/camera/VariableFpsRangeChooser;)Lcom/android/camera/camcorder/camera/VariableFpsRangeChooser;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1023
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/camera/VariableFpsRangeChooser;

    .line 10
    return-object v0
.end method
