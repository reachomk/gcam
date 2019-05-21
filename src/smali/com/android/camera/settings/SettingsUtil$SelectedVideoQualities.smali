.class public final Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/settings/SettingsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectedVideoQualities"
.end annotation


# instance fields
.field public large:I

.field public medium:I

.field public small:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v0, p0, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->large:I

    .line 79
    iput v0, p0, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->medium:I

    .line 80
    iput v0, p0, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->small:I

    return-void
.end method
