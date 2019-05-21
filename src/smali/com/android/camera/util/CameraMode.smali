.class public final enum Lcom/android/camera/util/CameraMode;
.super Ljava/lang/Enum;
.source "CameraMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/util/CameraMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/util/CameraMode;

.field public static final enum CAPTURE_INTENT:Lcom/android/camera/util/CameraMode;

.field public static final enum PANORAMA:Lcom/android/camera/util/CameraMode;

.field public static final enum PHOTO:Lcom/android/camera/util/CameraMode;

.field public static final enum PHOTOSPHERE:Lcom/android/camera/util/CameraMode;

.field public static final enum REFOCUS:Lcom/android/camera/util/CameraMode;

.field public static final enum SETTINGS:Lcom/android/camera/util/CameraMode;

.field public static final enum VIDEO:Lcom/android/camera/util/CameraMode;

.field public static final enum VIDEO_HFR:Lcom/android/camera/util/CameraMode;

.field public static final enum VIDEO_INTENT:Lcom/android/camera/util/CameraMode;


# instance fields
.field private final descriptionId:I

.field private final iconId:I

.field private final indexId:I

.field private final titleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/android/camera/util/CameraMode;

    const-string v1, "PHOTO"

    const v3, 0x7f0f0011

    const v4, 0x7f0a0180

    const v5, 0x7f0a018c

    const v6, 0x7f0200bc

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/util/CameraMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/android/camera/util/CameraMode;->PHOTO:Lcom/android/camera/util/CameraMode;

    .line 21
    new-instance v3, Lcom/android/camera/util/CameraMode;

    const-string v4, "VIDEO"

    const v6, 0x7f0f0012

    const v7, 0x7f0a0181

    const v8, 0x7f0a018d

    const v9, 0x7f02012e

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/util/CameraMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/android/camera/util/CameraMode;->VIDEO:Lcom/android/camera/util/CameraMode;

    .line 26
    new-instance v3, Lcom/android/camera/util/CameraMode;

    const-string v4, "REFOCUS"

    const v6, 0x7f0f0013

    const v7, 0x7f0a0186

    const v8, 0x7f0a0190

    const v9, 0x7f020116

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/util/CameraMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/android/camera/util/CameraMode;->REFOCUS:Lcom/android/camera/util/CameraMode;

    .line 31
    new-instance v3, Lcom/android/camera/util/CameraMode;

    const-string v4, "PHOTOSPHERE"

    const v6, 0x7f0f0014

    const v7, 0x7f0a0182

    const v8, 0x7f0a018e

    const v9, 0x7f020112

    move v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/util/CameraMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/android/camera/util/CameraMode;->PHOTOSPHERE:Lcom/android/camera/util/CameraMode;

    .line 36
    new-instance v3, Lcom/android/camera/util/CameraMode;

    const-string v4, "PANORAMA"

    const v6, 0x7f0f0015

    const v7, 0x7f0a0185

    const v8, 0x7f0a018f

    const v9, 0x7f020108

    move v5, v13

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/util/CameraMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/android/camera/util/CameraMode;->PANORAMA:Lcom/android/camera/util/CameraMode;

    .line 41
    new-instance v3, Lcom/android/camera/util/CameraMode;

    const-string v4, "VIDEO_HFR"

    const/4 v5, 0x5

    const v6, 0x7f0f0017

    const v7, 0x7f0a0187

    const v8, 0x7f0a0191

    const v9, 0x7f020122

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/util/CameraMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/android/camera/util/CameraMode;->VIDEO_HFR:Lcom/android/camera/util/CameraMode;

    .line 46
    new-instance v3, Lcom/android/camera/util/CameraMode;

    const-string v4, "CAPTURE_INTENT"

    const/4 v5, 0x6

    const v6, 0x7f0f0018

    const v7, 0x7f0a0180

    const v8, 0x7f0a018c

    const v9, 0x7f0200bc

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/util/CameraMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/android/camera/util/CameraMode;->CAPTURE_INTENT:Lcom/android/camera/util/CameraMode;

    .line 51
    new-instance v3, Lcom/android/camera/util/CameraMode;

    const-string v4, "VIDEO_INTENT"

    const/4 v5, 0x7

    const v6, 0x7f0f0019

    const v7, 0x7f0a0181

    const v8, 0x7f0a018d

    const v9, 0x7f02012e

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/util/CameraMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/android/camera/util/CameraMode;->VIDEO_INTENT:Lcom/android/camera/util/CameraMode;

    .line 56
    new-instance v3, Lcom/android/camera/util/CameraMode;

    const-string v4, "SETTINGS"

    const/16 v5, 0x8

    const v6, 0x7f0f001a

    const v7, 0x7f0a017f

    const v8, 0x7f0a0192

    const v9, 0x7f02011c

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/util/CameraMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/android/camera/util/CameraMode;->SETTINGS:Lcom/android/camera/util/CameraMode;

    .line 15
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/camera/util/CameraMode;

    sget-object v1, Lcom/android/camera/util/CameraMode;->PHOTO:Lcom/android/camera/util/CameraMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/util/CameraMode;->VIDEO:Lcom/android/camera/util/CameraMode;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/camera/util/CameraMode;->REFOCUS:Lcom/android/camera/util/CameraMode;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/camera/util/CameraMode;->PHOTOSPHERE:Lcom/android/camera/util/CameraMode;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/camera/util/CameraMode;->PANORAMA:Lcom/android/camera/util/CameraMode;

    aput-object v1, v0, v13

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/util/CameraMode;->VIDEO_HFR:Lcom/android/camera/util/CameraMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/util/CameraMode;->CAPTURE_INTENT:Lcom/android/camera/util/CameraMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/util/CameraMode;->VIDEO_INTENT:Lcom/android/camera/util/CameraMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/camera/util/CameraMode;->SETTINGS:Lcom/android/camera/util/CameraMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/util/CameraMode;->$VALUES:[Lcom/android/camera/util/CameraMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput p3, p0, Lcom/android/camera/util/CameraMode;->indexId:I

    .line 69
    iput p4, p0, Lcom/android/camera/util/CameraMode;->titleId:I

    .line 70
    iput p5, p0, Lcom/android/camera/util/CameraMode;->descriptionId:I

    .line 71
    iput p6, p0, Lcom/android/camera/util/CameraMode;->iconId:I

    .line 72
    return-void
.end method

.method public static values()[Lcom/android/camera/util/CameraMode;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/camera/util/CameraMode;->$VALUES:[Lcom/android/camera/util/CameraMode;

    invoke-virtual {v0}, [Lcom/android/camera/util/CameraMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/util/CameraMode;

    return-object v0
.end method


# virtual methods
.method public final getDescription(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/camera/util/CameraMode;->descriptionId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/android/camera/util/CameraMode;->iconId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getModeIndex(Landroid/content/res/Resources;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    iget v0, p0, Lcom/android/camera/util/CameraMode;->indexId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public final getTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/camera/util/CameraMode;->titleId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
