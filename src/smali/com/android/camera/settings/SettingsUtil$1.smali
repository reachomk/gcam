.class final Lcom/android/camera/settings/SettingsUtil$1;
.super Ljava/lang/Object;
.source "SettingsUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/settings/SettingsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/camera/util/Size;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 212
    check-cast p1, Lcom/android/camera/util/Size;

    check-cast p2, Lcom/android/camera/util/Size;

    .line 1215
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    mul-int/2addr v0, v1

    .line 1216
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->height()I

    move-result v2

    mul-int/2addr v1, v2

    .line 1217
    sub-int v0, v1, v0

    .line 212
    return v0
.end method
