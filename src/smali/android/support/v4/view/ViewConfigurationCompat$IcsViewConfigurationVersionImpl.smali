.class final Landroid/support/v4/view/ViewConfigurationCompat$IcsViewConfigurationVersionImpl;
.super Landroid/support/v4/view/ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewConfigurationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IcsViewConfigurationVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/support/v4/view/ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .locals 1

    .prologue
    .line 61
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v0

    return v0
.end method
