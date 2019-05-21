.class final Lcom/android/camera/burst/xmp/XmpConstants;
.super Ljava/lang/Object;
.source "XmpConstants.java"


# static fields
.field static final XMP_STACK_EXCLUSION_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Animation"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Collage"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/burst/xmp/XmpConstants;->XMP_STACK_EXCLUSION_LIST:[Ljava/lang/String;

    return-void
.end method
