.class public final Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerImageSourceComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private androidAppExecutorsModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5PNIRJ35T2NGPB3ELQ6USIDDTI7AR35ECI42RJ4E9NMIP21E1O4AU35CDQN8RRIED6MUP3LDHIJM___:Lcom/android/camera/behavior/Behaviors;

.field private debugModule:Lcom/android/camera/debug/DebugModule;

.field private imageReaderImageSourceModule:Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;

.field private imageReaderModule:Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;

.field private imageSourceConfig:Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;)Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->imageReaderModule:Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;)Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->imageSourceConfig:Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;

    return-object v0
.end method

.method static synthetic access$300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR9DLGMEPBJDTQN4OR55T262PR7CLP4IRB1CTIL6RRLE9HMAGRFDLO6URJ5DPQ28GJLD5M68PBI7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2SRPDPHIUHBOCLHNAT3FE96MUP3LDHIN6921DPI74RR9CH0N0S25F1IM6TBKDTP76JBFCHQMOP9R(Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;)Lcom/android/camera/behavior/Behaviors;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->androidAppExecutorsModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5PNIRJ35T2NGPB3ELQ6USIDDTI7AR35ECI42RJ4E9NMIP21E1O4AU35CDQN8RRIED6MUP3LDHIJM___:Lcom/android/camera/behavior/Behaviors;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;)Lcom/android/camera/debug/DebugModule;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->debugModule:Lcom/android/camera/debug/DebugModule;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;)Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->imageReaderImageSourceModule:Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;

    return-object v0
.end method


# virtual methods
.method public final build()Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->imageReaderModule:Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-class v1, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;

    .line 145
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->imageSourceConfig:Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-class v1, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;

    .line 149
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->androidAppExecutorsModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5PNIRJ35T2NGPB3ELQ6USIDDTI7AR35ECI42RJ4E9NMIP21E1O4AU35CDQN8RRIED6MUP3LDHIJM___:Lcom/android/camera/behavior/Behaviors;

    if-nez v0, :cond_2

    .line 152
    new-instance v0, Lcom/android/camera/behavior/Behaviors;

    invoke-direct {v0}, Lcom/android/camera/behavior/Behaviors;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->androidAppExecutorsModule$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5PNIRJ35T2NGPB3ELQ6USIDDTI7AR35ECI42RJ4E9NMIP21E1O4AU35CDQN8RRIED6MUP3LDHIJM___:Lcom/android/camera/behavior/Behaviors;

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->debugModule:Lcom/android/camera/debug/DebugModule;

    if-nez v0, :cond_3

    .line 155
    new-instance v0, Lcom/android/camera/debug/DebugModule;

    invoke-direct {v0}, Lcom/android/camera/debug/DebugModule;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->debugModule:Lcom/android/camera/debug/DebugModule;

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->imageReaderImageSourceModule:Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;

    if-nez v0, :cond_4

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-class v1, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;

    .line 159
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_4
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;B)V

    return-object v0
.end method

.method public final imageReaderImageSourceModule(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;)Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;
    .locals 1

    .prologue
    .line 192
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->imageReaderImageSourceModule:Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;

    .line 193
    return-object p0
.end method

.method public final imageReaderModule(Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;)Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;
    .locals 1

    .prologue
    .line 176
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->imageReaderModule:Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;

    .line 177
    return-object p0
.end method

.method public final imageSourceConfig(Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;)Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;
    .locals 1

    .prologue
    .line 197
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->imageSourceConfig:Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;

    .line 198
    return-object p0
.end method
