.class Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICSViewCompatImpl"
.end annotation


# static fields
.field private static accessibilityDelegateCheckFailed:Z

.field private static mAccessibilityDelegateField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1345
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1343
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    .prologue
    .line 2415
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2

    .prologue
    .line 1398
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 1399
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    .line 1401
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1402
    if-nez v0, :cond_1

    .line 1403
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    .line 1404
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    :cond_1
    return-object v0
.end method

.method public final canScrollHorizontally(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1348
    invoke-static {p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public final canScrollVertically(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1352
    invoke-static {p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public final hasAccessibilityDelegate(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1375
    sget-boolean v2, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z

    if-eqz v2, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return v0

    .line 1378
    :cond_1
    sget-object v2, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_2

    .line 1380
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "mAccessibilityDelegate"

    .line 1381
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1382
    sput-object v2, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1389
    :cond_2
    :try_start_1
    sget-object v2, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1384
    :catch_0
    move-exception v2

    sput-boolean v1, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z

    goto :goto_0

    .line 1391
    :catch_1
    move-exception v2

    sput-boolean v1, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z

    goto :goto_0
.end method

.method public final setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 1

    .prologue
    .line 1369
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->setAccessibilityDelegate(Landroid/view/View;Ljava/lang/Object;)V

    .line 1371
    return-void

    .line 2331
    :cond_0
    iget-object v0, p2, Landroid/support/v4/view/AccessibilityDelegateCompat;->mBridge:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final setFitsSystemWindows(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1411
    invoke-static {p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 1412
    return-void
.end method
