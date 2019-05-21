.class public final Lcom/android/camera/util/AccessibilityUtil;
.super Ljava/lang/Object;
.source "AccessibilityUtil.java"


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "AccessibilityUtil"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/util/AccessibilityUtil;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 26
    return-void
.end method


# virtual methods
.method public final isAccessibilityEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    .line 1032
    iget-object v0, p0, Lcom/android/camera/util/AccessibilityUtil;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 62
    if-nez v0, :cond_1

    .line 1043
    iget-object v0, p0, Lcom/android/camera/util/AccessibilityUtil;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v3, -0x1

    .line 1044
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 1046
    if-eqz v0, :cond_2

    .line 1047
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1048
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1049
    if-eqz v0, :cond_0

    const-string v4, "com.google"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 62
    :goto_0
    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    .line 1054
    goto :goto_0

    :cond_3
    move v0, v1

    .line 62
    goto :goto_1
.end method
